#!/usr/bin/env python
import sys
import os,roslib,rospy
from twython import Twython

APP_KEY = 'TxOOOSqGT0QrH6r3yTHujlCDx'
APP_SECRET = 'FRg5IV59j7yqHZIzSpTBDWHnOseP0brknukjJeHaUdKyHR1lRN'
OAUTH_TOKEN = '816986812413513728-EF3OEuMCninLpJRkLWyctRZySG66ozT'
OAUTH_TOKEN_SECRET = 'MEWgRnQkh8KGCoQCe36Z64yUfL7tFGjejyZroij2cevur'

twitter = Twython(APP_KEY, APP_SECRET,
                  OAUTH_TOKEN, OAUTH_TOKEN_SECRET)
statusupdate = raw_input('WHAT SHOULD I SAY?\n')

twitter.update_status(status=statusupdate)