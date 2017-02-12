#!/usr/bin/python
from std_msgs.msg import UInt16
import rospy
rospy.init_node('Servo_control')
s1 = rospy.Publisher('servo',UInt16,queue_size=100)
while not rospy.is_shutdown():
	ask = raw_input("what should i do? ")
	if ask == "rotate":
		for i in range (0,180):
			if i == 179:
				i = i-1
				s1.publish(int(i))
			else:
				i = i+1
				s1.publish(int(i))

	if ask == "deg":
		while not rospy.is_shutdown():
			a = raw_input("Deg: ")
			s1.publish(int(a))
rospy.spin()