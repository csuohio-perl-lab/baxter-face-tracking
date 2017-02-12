#!/usr/bin/python
from Tkinter import *
from std_msgs.msg import UInt16
import rospy
rospy.init_node('Servo_control')
s1 = rospy.Publisher('servo1',UInt16,queue_size=10)



class Application(Frame):
    def say_hi(self):
        print "hi there, everyone!"
        s1.publish(50)

    def createWidgets(self):
        self.QUIT = Button(self)
        self.QUIT["text"] = "QUIT"
        self.QUIT["fg"]   = "red"
        self.QUIT["command"] =  self.quit

        self.QUIT.pack({"side": "left"})

        self.hi_there = Button(self)
        self.hi_there["text"] = "Hello",
        self.hi_there["command"] = self.say_hi
        self.hi_there.pack({"side": "left"})

        self.set_glob = Button(self)
        self.set_glob["text"] = "Reset"
        self.set_glob["command"] = self.set_globvar
        self.set_glob.pack({"side":"left"})

    def set_globvar(self):
    	s1.publish(10)

    def __init__(self, master=None):
        Frame.__init__(self, master)
        self.pack()
        self.createWidgets()
        


root = Tk()
app = Application(master=root)
app.mainloop()
root.destroy()

