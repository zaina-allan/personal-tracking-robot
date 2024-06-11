import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
from pyzbar.pyzbar import decode
from geometry_msgs.msg import Twist

# Function to detect and track a specific QR code
def detect_and_follow_qr():
    # Initialize ROS node
    rospy.init_node('qr_code_follower', anonymous=True)

    # Publisher for controlling the TurtleBot2
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    # Function to process image data
    def image_callback(msg):
        try:
            # Convert ROS Image message to OpenCV image
            bridge = CvBridge()
            frame = bridge.imgmsg_to_cv2(msg, desired_encoding="bgr8")

            # Convert the frame to grayscale for better QR code detection
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

            # Detect QR codes in the grayscale frame
            decoded_objects = decode(gray)

            # Initialize linear and angular velocities
            linear_vel = 0.2
            angular_vel = 0.5

            for obj in decoded_objects:
                # Extract the data from the detected QR code
                qr_data = obj.data.decode('utf-8')

                # Print the QR code data
                print("Detected QR code:", qr_data)

                # Control the TurtleBot2 to follow the QR code
                if qr_data == "follow":
                    # Move forward
                    twist_msg = Twist()
                    twist_msg.linear.x = linear_vel
                    pub.publish(twist_msg)
                else:
                    # Stop
                    twist_msg = Twist()
                    pub.publish(twist_msg)

        except Exception as e:
            print(e)

    # Subscribe to Kinect camera topic
    rospy.Subscriber("/camera/rgb/image_raw", Image, image_callback)

    # Spin ROS node
    rospy.spin()

# Call the function to detect and follow the QR code
detect_and_follow_qr()
