import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np

class KinectDepthViewer:
    def __init__(self):
        self.bridge = CvBridge()
        self.depth_sub = rospy.Subscriber('/camera/depth/image_raw', Image, self.depth_callback)
        self.depth_image = None

    def depth_callback(self, depth_msg):
        try:
            # Convert ROS Image message to OpenCV image
            self.depth_image = self.bridge.imgmsg_to_cv2(depth_msg, desired_encoding="passthrough")

            if self.depth_image is not None:
                # Get image dimensions
                height, width = self.depth_image.shape[:2]

                # Get depth value at center of the image
                center_x = width // 2
                center_y = height // 2
                depth_at_center = self.depth_image[center_y, center_x]

                # Print depth values around the center for debugging
                print("\nCenter depth value:", depth_at_center)
                print("Depth values around the center (in mm):")
                for dy in range(-1, 2):
                    for dx in range(-1, 2):
                        depth_value = self.depth_image[center_y + dy, center_x + dx]
                        print(f"({dy},{dx}): {depth_value}")

                # Convert depth value from millimeters to meters if valid
                if depth_at_center > 0:
                    min_distance_to_object = depth_at_center / 1000.0
                    rospy.loginfo(f"Distance to object at center: {min_distance_to_object:.2f} meters")
                else:
                    rospy.logwarn("Invalid depth value detected at the center.")
        except CvBridgeError as e:
            rospy.logerr(f"CV Bridge error: {e}")
        except Exception as e:
            rospy.logerr(f"Error processing depth image: {e}")

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    rospy.init_node('kinect_depth_viewer', anonymous=True)
    kinect_depth_viewer = KinectDepthViewer()
    kinect_depth_viewer.run()
