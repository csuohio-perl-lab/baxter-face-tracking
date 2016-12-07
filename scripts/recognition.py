#!/usr/bin/env python

import os,roslib,rospy
from std_msgs.msg import Float64,UInt16,Bool
from sensor_msgs.msg import Image
from cob_perception_msgs.msg import DetectionArray
from baxter_core_msgs.msg import HeadPanCommand,AnalogIOState 

def processRecogName(name):
	global flag , flag1, angley, anglex
	command = HeadPanCommand()
	ledpub = rospy.Publisher('led_option',UInt16,queue_size=10)
	puby = rospy.Publisher('tilt_angle',Float64,queue_size=10)
	pubx = rospy.Publisher('/robot/head/command_head_pan',HeadPanCommand,queue_size=10)
	if (name.detections == []):
		flag1 += 1
		if flag1 == 1:
			flag = 0
			ledpub.publish(0)
		else:
			flag1 = 0
	if (name.detections != []):
			rate = rospy.Rate(10)
			x = 0
			posey = 0
			posex = 0
			for x in xrange(0,len(name.detections)):
				posey += (name.detections[x].mask.roi.y)/(x+1)   
			x = 0
			for x in xrange(0,len(name.detections)):
				posex += (name.detections[x].mask.roi.x)/(x+1)
			if posey < 160:
				if(angley<29):
					angley += 1
				puby.publish(angley)
				ledpub.publish(2)
			if posey > 200:
				if(angley>-29):
					angley -= 1 		
				puby.publish(angley)
				ledpub.publish(3)
			if posex > 290:
				if (anglex >= -0.99):
					anglex -= 0.03
					command.target = anglex
					command.speed_ratio = 0.05
					command.enable_pan_request = 1
					pubx.publish(command)
				print command

			if posex < 250:
				if (anglex <= 0.99):
					anglex += 0.03
					command.target = anglex
					command.speed_ratio = 0.05
					command.enable_pan_request = 1
					pubx.publish(command)
				
			else:
				ledpub.publish(7)			
			flag += 1
			if (flag == 1):		
				os.system("echo 'hello, " + name.detections[0].label +"' |festival --tts")					
				print(name.detections[0].label + " detected!")
	else:
				flag = 0	



def processScreen(image):
	video=rospy.Publisher('robot/xdisplay',Image,queue_size=100)
	process = Image()
	process = image
	video.publish(process)

def do():
	rospy.Subscriber("detection_tracker/face_position_array",DetectionArray,processRecogName)
	rospy.Subscriber("/people_detection_display/face_position_image",Image,processScreen)
	rospy.spin()



if __name__ == '__main__':
	if os.fork() == 0:
		os.system("rosrun baxter_tools enable_robot.py -e")
	else:
		if os.fork() == 0:
			os.system("roslaunch openni_launch openni.launch")
		else:
			if os.fork() == 0:
				os.system("roslaunch cob_people_detection people_detection.launch")
			else:
				if os.fork() == 0:
					os.system("rosrun kinect_aux kinect_aux_node")
				else:
					if os.fork() == 0:
						os.system("rosrun web_video_server web_video_server")
					else:
						flag = 0
						flag1 = 0
						angley = 0
						anglex = 0
						wheel_value = 0
						rospy.init_node('Baxter_control')
						do()
						os.system("rosrun baxter_examples xdisplay_image.py --file=`rospack find baxter_examples`/share/images/baxterworking.png")
						os.system("rosrun baxter_tools enable_robot.py -d")
