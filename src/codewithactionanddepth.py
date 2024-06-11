#!/usr/bin/env python

import rospy
from ar_track_alvar_msgs.msg import AlvarMarkers

def qr_code_callback(msg):
    for marker in msg.markers:
        if marker.id == 0:  # Change 0 to the ID of your QR code
            # Track the position of the QR code
            rospy.loginfo("QR Code Detected! Pose: {}".format(marker.pose.pose))

def qr_code_tracker():
    rospy.init_node('qr_code_tracker', anonymous=True)
    rospy.Subscriber("/ar_pose_marker", AlvarMarkers, qr_code_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        qr_code_tracker()
    except rospy.ROSInterruptException:
        pass
