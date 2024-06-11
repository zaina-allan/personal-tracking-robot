import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from std_msgs.msg import Float32
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np
from pyzbar import pyzbar

# Particle filter parameters
num_particles = 50
particles = np.zeros((num_particles, 2), dtype=np.float32)
weights = np.ones(num_particles) / num_particles
average_point = np.zeros(2, dtype=np.float32)
qr_detected = False
distance = None

# Threshold distance to detect an obstacle (in cm)
safe_distance = 30.0

class DepthImageSubscriber:
    def __init__(self):
        self.bridge = CvBridge()
        self.depth_values = None
        rospy.Subscriber("/camera/depth/image_raw", Image, self.depth_image_callback)

    def depth_image_callback(self, data):
        try:
            depth_image = self.bridge.imgmsg_to_cv2(data, desired_encoding="passthrough")
            self.depth_values = np.array(depth_image, dtype=np.float32)
        except CvBridgeError as e:
            print(e)
            self.depth_values = None

    def get_depth_values(self):
        return self.depth_values

class ParticleFilterTracking:
    def __init__(self):
        rospy.init_node('particle_filter_tracking', anonymous=True)
        self.last_image_time = rospy.Time.now()
        self.min_interval = rospy.Duration(0.5)
        self.depth_subscriber = DepthImageSubscriber()

        rospy.Subscriber("/ultrasonic_distance", Float32, self.distance_callback)
        self.pub = rospy.Publisher('/cmd_vel_mux/input/navi', Twist, queue_size=10)
        self.bridge = CvBridge()

    def distance_callback(self, msg):
        global distance
        distance = msg.data

    def read_barcodes(self, frame):
        global qr_detected
        barcodes = pyzbar.decode(frame)
        qr_detected = False
        for barcode in barcodes:
            x, y, w, h = barcode.rect
            barcode_info = barcode.data.decode('utf-8')
            if barcode_info == "https://www.google.com":
                self.move_to_average_point(x + w / 2, y + h / 2)
                cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
                qr_detected = True
        return frame

    def initialize_particles(self, frame):
        h, w = frame.shape[:2]
        particles[:, 0] = np.random.normal(average_point[0], w/10, num_particles)
        particles[:, 1] = np.random.normal(average_point[1], h/10, num_particles)

    def move_to_average_point(self, x, y):
        global average_point
        average_point = np.array([x, y])

    def predict_particles(self, motion_model_noise=5):
        particles[:, 0] += np.random.randn(num_particles) * motion_model_noise
        particles[:, 1] += np.random.randn(num_particles) * motion_model_noise

    def update_weights(self, frame, observation_model_noise=15):
        global weights
        barcodes = pyzbar.decode(frame)
        for barcode in barcodes:
            x, y, w, h = barcode.rect
            barcode_info = barcode.data.decode('utf-8')
            if barcode_info == "https://www.google.com":
                cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
                particle_distances = np.linalg.norm(particles - np.array([x + w / 2, y + h / 2]), axis=1)
                observation_likelihood = np.exp(-particle_distances**2 / (2 * observation_model_noise**2))
                weights *= observation_likelihood
        weights /= np.sum(weights)

    def resample_particles(self):
        global particles, weights
        indices = np.random.choice(np.arange(num_particles), size=num_particles, replace=True, p=weights)
        particles = particles[indices]
        weights = np.ones(num_particles) / num_particles

    def particle_filter_tracking(self):
        global average_point, qr_detected, distance
        rate = rospy.Rate(3)
        l = 0
        r = 0

        while not rospy.is_shutdown():
            try:
                data = rospy.wait_for_message('/camera/rgb/image_raw', Image, timeout=5)
                depth_data = self.depth_subscriber.get_depth_values()
                if depth_data is None:
                    continue

                frame = self.bridge.imgmsg_to_cv2(data, 'bgr8')
                frame = cv2.resize(frame, (640, 480))

                self.predict_particles()
                self.update_weights(frame)
                self.resample_particles()

                for particle in particles:
                    cv2.circle(frame, (int(particle[0]), int(particle[1])), 5, (255, 0, 0), -1)

                frame = self.read_barcodes(frame)
                cv2.imshow('Particle Filter Tracking', frame)
                cv2.waitKey(1)

                twist = Twist()
                start = 0.0
                stop = 0.4
                step = 0.1

                if qr_detected:
                    qr_depth = depth_data[int(average_point[1]), int(average_point[0])]
                    if qr_depth < 0.5:
                        if average_point[0] < 200:
                            twist.angular.z = 0.4
                            r += 1
                        elif average_point[0] > 300:
                            twist.angular.z = -0.4
                            l += 1
                        else:
                            twist.linear.x = 0.2  # Move forward smoothly with linear velocity of 0.2
                    else:
                        if average_point[0] < 200:
                         for value in np.arange(start, stop, step):
                            twist.linear.x = value
                            twist.angular.z = value
                            r += 1
                        elif average_point[0] > 300:
                            for value in np.arange(start, stop, step):
                                twist.linear.x = value
                                twist.angular.z = value
                                l += 1
                        else:
                            for value in np.arange(start, stop, step):
                                twist.linear.x = value
                                twist.angular.z = 0.0
                else:
                    if l > r:
                        twist.angular.z = -0.2
                    else:
                        twist.angular.z = 0.2

                self.pub.publish(twist)
            except rospy.ROSException as e:
                rospy.logerr(e)

            rate.sleep()

        cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        particle_filter = ParticleFilterTracking()
        particle_filter.particle_filter_tracking()
    except rospy.ROSInterruptException:
        pass
