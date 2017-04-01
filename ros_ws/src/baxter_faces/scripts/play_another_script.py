#!/usr/bin/env python

import argparse
import math
import operator
import subprocess
import random
from std_msgs.msg import String
import baxter_interface
import subprocess
import rospy


def main():

    rospy.init_node("crappy_node", anonymous=True)

    while not rospy.is_shutdown():

        # execfile('/home/ai05/ros_ws/src/baxter_faces/scripts/approval.py')
        p = subprocess.Popen('/home/ai05/ros_ws/src/baxter_faces/scripts/approval.py')
        p.wait()
        rospy.signal_shutdown("because")

if __name__ == '__main__':
    main()