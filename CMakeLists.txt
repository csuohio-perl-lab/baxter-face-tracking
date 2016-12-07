cmake_minimum_required(VERSION 2.8.3)
project(perl_baxter)

find_package(catkin
  REQUIRED
  COMPONENTS
  rospy
  xacro
  actionlib
  sensor_msgs
  control_msgs
  trajectory_msgs
  cv_bridge
  dynamic_reconfigure
  baxter_core_msgs
  baxter_interface
  message_generation
)

catkin_python_setup()


catkin_package(
  CATKIN_DEPENDS
  rospy
  xacro
  actionlib
  sensor_msgs
  control_msgs
  trajectory_msgs
  cv_bridge
  dynamic_reconfigure
  baxter_core_msgs
  baxter_interface
)

install(
  PROGRAMS
  scripts/recognition.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

