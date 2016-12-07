These steps assume that you already installed ROS indigo and created a catkin_workspace.




# 1. Install dependent repositories:

sudo apt-get install ros-indigo-web-video-*

sudo apt-get install ros-indigo-async-*

sudo apt-get install ros-indigo-kinect-aux-*

sudo apt-get install ros-indigo-openni-*


# 2. Clone required repositories:

Please refer to the steps on:

http://wiki.ros.org/cob_people_detection?distro=indigo ----> for face recognization and training setup.

http://wiki.ros.org/web_video_server ----> for web_video_server setup.

http://learn.turtlebot.com/2015/02/01/5/ ----> for kinect driver setup.

http://wiki.ros.org/openni_launch ----> for openni kinect setup.

http://sdk.rethinkrobotics.com/wiki/Baxter_Setup ----> for baxter setup.


# 3. Running the script:

Only run "rosrun perl_baxter recognition.py" ! It will take care of all the background processes alone.


# LINKS TO DEPENDENT LIBRARIES:

# ((TO BE PREPARED))

