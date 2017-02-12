#!/usr/bin/env python

import os,roslib,rospy,argparse,tf
import baxter_interface
import baxter_external_devices
from sensor_msgs.msg import Image
from std_msgs.msg import String
from baxter_interface import CHECK_VERSION

def processSpeech(speech):
	instr = speech.data
	print "Received: "+instr
	os.system("echo '"+instr+"' |festival --tts")

def processScreen(image):
	video=rospy.Publisher('robot/xdisplay',Image,queue_size=100)
	process = Image()
	process = image
	video.publish(process)
	
def do():
	rospy.Subscriber("/displaycontrol",Image,processScreen)
	rospy.Subscriber("/speechcontrol",String,processSpeech)
	rospy.spin()
	
if __name__ == '__main__':
	rospy.init_node('perl_receive')
	do()