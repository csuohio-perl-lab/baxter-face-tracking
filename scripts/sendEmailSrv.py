#!/usr/bin/env python

import smtplib
import getpass


fromaddr = "robot"
toaddrs  = raw_input("\nTo?\n")
msg = raw_input("\nMessage?\n")


# Credentials (if needed)
username = "robot.perllab"
password = "perlrobot123"

#getpass.getpass("\nPassword: \n")

server = smtplib.SMTP('smtp.gmail.com:587')
server.starttls()
server.login(username,password)
server.sendmail(fromaddr, toaddrs, msg)
server.quit()
