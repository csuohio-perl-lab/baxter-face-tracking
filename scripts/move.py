#!/usr/bin/env python

import os,roslib,rospy,argparse,tf
import baxter_interface
import baxter_external_devices
from sensor_msgs.msg import Image
from std_msgs.msg import String
from baxter_interface import CHECK_VERSION

def movelimbs():
	listener = tf.TransformListener()
    	rate = rospy.Rate(10.0)
	while not rospy.is_shutdown():
        	try:
            		(trans,rot) = listener.lookupTransform('/right_elbow_5', '/right_shoulder_5', rospy.Time(0))
        	except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            		continue
		print(trans[0])
		
	
def do():

	rospy.spin()
	
if __name__ == '__main__':
	rospy.init_node('perl_move')
	do()