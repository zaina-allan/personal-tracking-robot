
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np
from pyzbar import pyzbar

class ParticleFilterTracking ():             
    def __init__(self):
        rospy.init_node('particle_filter_tracking', anonymous=True)
        self.last_image_time = rospy.Time.now()
        self.min_interval = rospy.Duration(0.5)  # Reduced to 2 Hz
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/camera/rgb/image_raw', Image, self.image_callback)

    def image_callback(self, data):
        if rospy.Time.now() - self.last_image_time < self.min_interval:
            return
        self.last_image_time = rospy.Time.now()

        frame = self.bridge.imgmsg_to_cv2(data, 'bgr8')

        print("islam >>>>>>>") 

        cv2.imshow('Particle Filter Tracking', frame)
        cv2.waitKey(1)

    def run(self):
        rospy.spin()    #     # Resize frame to reduce lag
        frame = cv2.resize(frame, (640, 480))

        print("islam >>>>>>>") 

        cv2.imshow('Particle Filter Tracking', frame)
        cv2.waitKey(1)

    # def run(self):
    #     rospy.spin()











if __name__ == '__main__':

        particle_filter = ParticleFilterTracking()
        particle_filter.run()
        # particle_filter.particle_filter_tracking()
   