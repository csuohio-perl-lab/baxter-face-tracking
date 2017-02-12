#!/usr/bin/env python

from Tkinter import *
import os,roslib,rospy,argparse,tf,sys
import baxter_interface
import baxter_external_devices
from sensor_msgs.msg import Image
from std_msgs.msg import String
from speech_recognition_msgs.msg import SpeechRecognitionCandidates

if len(sys.argv)>1 and sys.argv[1] == "sim":
	topic = 'robot/xdisplay'
else:
	topic = 'displaycontrol'


def processGUI():
	root = Tk()
	label1 = Label( root, text="Input 1")
	E1 = Entry(root, bd =5)
	def getDate():
    		print E1.get()
		sendspeech=rospy.Publisher('speechcontrol',String,queue_size=100)
		sendspeech.publish(str(E1.get()))
	submit = Button(root, text ="Submit", command = getDate)
	label1.pack()
	E1.pack()
	submit.pack(side =BOTTOM) 
	root.mainloop()	


def processSpeech(recog):
	inputStr = recog.transcript[0]
	if topic == 'robot/xdisplay':
		os.system("echo '"+inputStr+"' |festival --tts")
	else:	
		sendspeech=rospy.Publisher('speechcontrol',String,queue_size=100)
		sendspeech.publish(inputStr)
		

def processScreen(image):
	video=rospy.Publisher(topic,Image,queue_size=100)
	process = Image()
	process = image
	video.publish(process)
	
def do():
	rospy.Subscriber("/usb_cam/image_raw",Image,processScreen)
	rospy.Subscriber("/Tablet/voice",SpeechRecognitionCandidates,processSpeech)
	processGUI()	
	rospy.spin()
	
if __name__ == '__main__':
	if os.fork() == 0:
		os.system("roslaunch usb_cam usb_cam-test.launch")
	else:
		if os.fork() == 0:
			os.system("roslaunch rwt_speech_recognition rwt_speech_recognition.launch")
		else:
			rospy.init_node('perl_send')
			do()
