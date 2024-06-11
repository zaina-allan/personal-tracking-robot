#!/usr/bin/env python

'''
Copyright (c) 2015, Mark Silliman
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
'''

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

class GoForwardAvoid():
    def __init__(self):
        
        rospy.init_node('obstacle_avoidance', anonymous=False)

        # What to do if shut down (e.g. ctrl + C or failure)
        rospy.on_shutdown(self.shutdown)

        # Publisher to control the robot
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        
        twist = Twist()
        twist.linear.x = 0.2  # Move forward
        twist.angular.z = 0.0
        self.cmd_vel_pub.publish(twist)
        # Subscribe to LaserScan
        rospy.Subscriber('/scan', LaserScan, self.scan_callback)
        


        rospy.loginfo("Obstacle avoidance node initialized")

        rospy.spin()

    def scan_callback(self, msg):
        if min(msg.ranges) < 0.6:
            rospy.loginfo("Obstacle detected!")
            twist = Twist()
            twist.linear.x = 0.0  # Stop
            twist.angular.z = 0.5  # Turn right
            self.cmd_vel_pub.publish(twist)
        else:
            twist = Twist()
            twist.linear.x = 0.2  # Move forward
            twist.angular.z = 0.0
            self.cmd_vel_pub.publish(twist)

    def shutdown(self):
        # Stop the robot when shutting down the node
        rospy.loginfo("Stop")
        twist = Twist()
        twist.linear.x = 0.0
        twist.angular.z = 0.0
        self.cmd_vel_pub.publish(twist)

if __name__ == '__main__':
    try:
        GoForwardAvoid()
    except rospy.ROSInterruptException:
        pass
