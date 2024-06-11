

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np
from pyzbar import pyzbar

# Particle filter parameters
num_particles = 100
particles = np.zeros((num_particles, 2), dtype=np.float32)
weights = np.ones(num_particles) / num_particles
average_point = np.zeros(2, dtype=np.float32)
qr_detected = False

def read_barcodes(frame):
    global qr_detected
    barcodes = pyzbar.decode(frame)
    qr_detected = False
    for barcode in barcodes:
        x, y, w, h = barcode.rect
        barcode_info = barcode.data.decode('utf-8')
        # Move to the average point when the specified QR code is detected
        if barcode_info == "https://www.google.com":
            move_to_average_point(x + w / 2, y + h / 2)
            cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
            qr_detected = True

    return frame

def initialize_particles(frame):
    h, w = frame.shape[:2]
    # Initialize particle locations around the average point
    particles[:, 0] = np.random.normal(average_point[0], w/10, num_particles)
    particles[:, 1] = np.random.normal(average_point[1], h/10, num_particles)

def move_to_average_point(x, y):
    global average_point
    # Update the average point based on the detected barcode location
    average_point = np.array([x, y])

def predict_particles(motion_model_noise=10):
    # Add random noise to particle locations (simulate motion)
    particles[:, 0] += np.random.randn(num_particles) * motion_model_noise
    particles[:, 1] += np.random.randn(num_particles) * motion_model_noise

def update_weights(frame, observation_model_noise=30):
    global weights
    # Calculate observation model probability based on barcode detection
    barcodes = pyzbar.decode(frame)
    for barcode in barcodes:
        x, y, w, h = barcode.rect
        barcode_info = barcode.data.decode('utf-8')
        m = barcode_info
        if m == "https://www.google.com":
            cv2.rectangle(frame, (x, y),(x+w, y+h), (0, 255, 0), 2)
            particle_distances = np.linalg.norm(particles - np.array([x + w / 2, y + h / 2]), axis=1)
            observation_likelihood = np.exp(-particle_distances**2 / (2 * observation_model_noise**2))
            weights *= observation_likelihood
    # Normalize weights
    weights /= np.sum(weights)

def resample_particles():
    global particles, weights
    indices = np.random.choice(np.arange(num_particles), size=num_particles, replace=True, p=weights)
    particles = particles[indices]
    weights = np.ones(num_particles) / num_particles

def particle_filter_tracking():
    global average_point, qr_detected
    bridge = CvBridge()
    rospy.init_node('particle_filter_tracking', anonymous=True)
    pub = rospy.Publisher('/cmd_vel_mux/input/navi', Twist, queue_size=10)
    rate = rospy.Rate(10)  # 10hz

    while not rospy.is_shutdown():
        try:
            data = rospy.wait_for_message('/action_camera/image_raw', Image, timeout=5)
            frame = bridge.imgmsg_to_cv2(data, 'bgr8')

            # Initialize particles in the first frame
            if np.sum(particles) == 0:
                initialize_particles(frame)
            
            # Predict particles based on motion model
            predict_particles()

            # Update particle weights based on observation model
            update_weights(frame)

            # Resample particles
            resample_particles()
           
            # Draw particles on the frame for visualization
            for particle in particles:
                cv2.circle(frame, (int(average_point[0]), int(average_point[1])), 5, (255, 0, 0), -1)

            # Read barcodes
            frame = read_barcodes(frame)

            cv2.imshow('Particle Filter Tracking', frame)
            cv2.waitKey(1)

            # Move the TurtleBot to follow the QR code
            if qr_detected:
                twist = Twist()
                if average_point[0] < 200:
                    twist.linear.x = 0.2
                    twist.angular.z = -0.5
                elif average_point[0] > 300:
                    twist.linear.x = 0.2
                    twist.angular.z = 0.5
                else:
                    twist.linear.x = 0.2
                    twist.angular.z = 0.0
                pub.publish(twist)

        except rospy.ROSException as e:
            rospy.logerr(e)

        rate.sleep()

    cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        particle_filter_tracking()
    except rospy.ROSInterruptException:
        pass
