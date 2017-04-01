#!/usr/bin/env python
import rospy
import subprocess
import os
# import cv2
# import cv_bridge
from sensor_msgs.msg import Image
from std_msgs.msg import (String, Bool)

import approval, blink, confusion, disapproval, falling_asleep, happiness, idle, laughing, \
    sleeping, thinking, waking, wink

def main():
    rospy.init_node('emotion_reciever')
    print 'running'
    sub = rospy.Subscriber('emotion_chatter', String, play_emotion)

    rospy.spin()

def play_emotion(emote):

    print 'emote playing'
    print emote.data
    emotions = {'confusion' : confusion,
                'idle' : idle,
                'approval' : approval,
                'disapproval' : disapproval,
                'laughing' : laughing,
                'sleeping' : sleeping,
                'thinking' : thinking,
                'waking' : waking,
                'wink' : wink,
                'falling_asleep' : falling_asleep,
                'happiness' : happiness,
                'blink' : blink}


    if emote.data in emotions.keys():
        p = subprocess.Popen("/home/ai05/ros_ws/src/baxter_faces/scripts/" + emote.data + ".py", shell = True)
        p.wait()

    else:
        subprocess.call('/home/ai05/ros_ws/src/baxter_faces/scripts/idle.py', shell = True)
        # emotions['idle']

if __name__ == '__main__':
    main()
