# baxter-face-tracking

First, setup baxter following steps in this:

http://sdk.rethinkrobotics.com/wiki/Baxter_Setup

Dependencies:

sudo apt-get install ros-<distro>-kinect-aux-*

sudo apt-get install ros-<distro>-baxter-*

sudo apt-get install ros-<distro>-web-video-*

sudo apt-get install ros-<distro>-openni-*


cob_people_detection and cob_people_perception should be installed too.

In your catkin workspace:

cd src

git clone https://github.com/ipa-rmb/cob_people_perception.git

git clone https://github.com/ipa-rmb/cob_perception_common.git

cd .. && source devel/setup.bash

rosdep install --from-path src/ -y -i

catkin_make -DCMAKE_BUILD_TYPE="Release"



for more information about installing cob_people_detection:

http://wiki.ros.org/cob_people_detection?distro=indigo

