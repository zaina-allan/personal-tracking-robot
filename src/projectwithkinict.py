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
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import numpy as np
from pyzbar import pyzbar

# Particle filter parameters
num_particles = 50  # Reduced the number of particles
particles = np.zeros((num_particles, 2), dtype=np.float32)
weights = np.ones(num_particles) / num_particles
average_point = np.zeros(2, dtype=np.float32)
qr_detected = False
avz = 0  # Initialize avz
c = 0   # Initialize c

class ParticleFilterTracking:
    def __init__(self):
        rospy.init_node('particle_filter_tracking', anonymous=True)
        self.last_image_time = rospy.Time.now()
        self.min_interval = rospy.Duration(0.5)  # Reduced to 2 Hz

    def read_barcodes(self, frame):
        global qr_detected
        barcodes = pyzbar.decode(frame)
        qr_detected = False
        for barcode in barcodes:
            x, y, w, h = barcode.rect
            barcode_info = barcode.data.decode('utf-8')
            # Move to the average point when the specified QR code is detected
            if barcode_info == "https://www.google.com":
                self.move_to_average_point(x + w / 2, y + h / 2)
                cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 255, 0), 2)
                qr_detected = True

        return frame

    def initialize_particles(self, frame):
        h, w = frame.shape[:2]
        # Initialize particle locations around the average point
        particles[:, 0] = np.random.normal(average_point[0], w/10, num_particles)
        particles[:, 1] = np.random.normal(average_point[1], h/10, num_particles)

    def move_to_average_point(self, x, y):
        global average_point
        # Update the average point based on the detected barcode location
        average_point = np.array([x, y])

    def predict_particles(self, motion_model_noise=5):  # Reduced motion model noise
        # Add random noise to particle locations (simulate motion)
        particles[:, 0] += np.random.randn(num_particles) * motion_model_noise
        particles[:, 1] += np.random.randn(num_particles) * motion_model_noise

    def update_weights(self, frame, observation_model_noise=15):  # Reduced observation model noise
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

    def resample_particles(self):
        global particles, weights
        indices = np.random.choice(np.arange(num_particles), size=num_particles, replace=True, p=weights)
        particles = particles[indices]
        weights = np.ones(num_particles) / num_particles

    def particle_filter_tracking(self):
            global average_point, qr_detected, avz, c
            bridge = CvBridge()
            pub = rospy.Publisher('/cmd_vel_mux/input/navi', Twist, queue_size=10)
            rate = rospy.Rate(2)  # Reduced frequency to 2 Hz

            while not rospy.is_shutdown():
                # if rospy.Time.now() - self.last_image_time < self.min_interval:
                #         continue
                # self.last_image_time = rospy.Time.now()

                try:
                    data = rospy.wait_for_message('/camera/rgb/image_raw', Image, timeout=5)
                    frame = bridge.imgmsg_to_cv2(data, 'bgr8')

                    # Resize frame to reduce lag
                    frame = cv2.resize(frame, (640, 480))

                    # Initialize particles in the first frame
                    # if np.sum(particles) == 0:
                    #     self.initialize_particles(frame)  
                    print("zainah>>>>") 
                    print("islam >>>>>>>")
                 

                    # cv2.imshow('Particle Filter Tracking', frame)
                    # cv2.waitKey(1)

                    
                    
                    # Predict particles based on motion model
                    self.predict_particles()

                    # Update particle weights based on observation model
                    self.update_weights(frame)

                    # Resample particles
                    self.resample_particles()
                
                    # Draw particles on the frame for visualization
                    for particle in particles:
                        cv2.circle(frame, (int(average_point[0]), int(average_point[1])), 5, (255, 0, 0), -1) 

                    # cv2.imshow('Particle Filter Tracking', frame) 
                    # cv2.waitKey(1)

                    # Read barcodes
                    frame = self.read_barcodes(frame)

                    cv2.imshow('Particle Filter Tracking', frame)
                    cv2.waitKey(1)

                    # Move the TurtleBot to follow the QR code
                    if qr_detected:
                        if average_point[0] < 200:
                            twist = Twist()
                            twist.linear.x = 0.2  # Reduced linear velocity
                            twist.angular.z = 0.5  # Reduced angular velocity
                            pub.publish(twist)
                            avz=avz+1
                        elif average_point[0] > 300:
                            twist = Twist()
                            twist.linear.x = 0.2  # Reduced linear velocity
                            twist.angular.z =-0.5  # Reduced angular velocity
                            pub.publish(twist)
                            c=c+1
                        else:
                            if (avz==0 and c==0):
                                twist = Twist()
                                twist.linear.x = 0.2  # Reduced linear velocity
                                twist.angular.z = 0.0
                                pub.publish(twist)
                        
                            if(avz>c):
                             twist = Twist()
                             twist.linear.x = 0.2  # Reduced linear velocity
                             twist.angular.z = 0.5  # Reduced angular velocity
                             pub.publish(twist)
                             
                            

                            else:
                             twist = Twist()
                             twist.linear.x = 0.2  # Reduced linear velocity
                             twist.angular.z = 0.0
                             pub.publish(twist)
                         
                             
                            

                except rospy.ROSException as e:
                    rospy.logerr(e)

                # rate.sleep()

            cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        particle_filter = ParticleFilterTracking()
        particle_filter.particle_filter_tracking()
    except rospy.ROSInterruptException:
        pass
