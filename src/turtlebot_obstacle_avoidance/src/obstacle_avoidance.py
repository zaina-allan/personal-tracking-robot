#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

def scan_callback(scan_msg):
    if min(scan_msg.ranges[0:20] + scan_msg.ranges[340:360]) > 0.8:
        # If no obstacle detected in front, move forward
        move.linear.x = 0.2
        move.angular.z = 0.0
    else:
        # If obstacle detected, stop and turn
        move.linear.x = 0.0
        move.angular.z = 0.5
    pub.publish(move)

rospy.init_node('obstacle_avoidance')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
sub = rospy.Subscriber('/scan', LaserScan, scan_callback)
move = Twist()

rospy.spin()
