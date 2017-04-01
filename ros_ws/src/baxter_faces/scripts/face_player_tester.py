#!/usr/bin/env python

import argparse
import math
import operator
import random
from std_msgs.msg import (String, Bool)
import baxter_interface
import rospy



def main():

    rospy.init_node("emote_tester")
    emotion_publisher = rospy.Publisher('emotion_chatter', String, queue_size=100)
    rate = rospy.Rate(100)
    arg_fmt = argparse.RawDescriptionHelpFormatter
    parser = argparse.ArgumentParser(formatter_class=arg_fmt,
                                     description=main.__doc__)
    parser.add_argument(
        '-e', '--emotion', dest='emote', required=True, choices=['confusion',
                                                                 'idle',
                                                                 'approval',
                                                                 'disapproval',
                                                                 'laughing',
                                                                 'sleeping',
                                                                 'thinking',
                                                                 'waking',
                                                                 'wink',
                                                                 'falling_asleep',
                                                                 'happiness',
                                                                 'blink']
    )

    # parser.add_argument(
    #     '-l', '--loop', dest='loop', required=True, choices=['true',
    #                                                            'false'])

    args = parser.parse_args(rospy.myargv()[1:])
    signal = args.emote
    #loop = args.loop
    print signal #, loop

    """
    if loop == 'true':
        loop_bool = True
    else:
        loop_bool = False
    """
    print 'start sleeping'
    while emotion_publisher.get_num_connections() == 0:
        print 'sleeping'
        rate.sleep()
    print 'done sleeping'
    # while not rospy.is_shutdown():
    emotion_publisher.publish(signal)


main()

