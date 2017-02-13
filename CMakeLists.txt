cmake_minimum_required(VERSION 2.8.3)
project(perl_baxter)

find_package(catkin
  REQUIRED
  COMPONENTS
  rospy
  roscpp
  genmsg
  std_msgs
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

generate_messages(DEPENDENCIES std_msgs)


catkin_package(
  CATKIN_DEPENDS
  rospy
  roscpp
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

include_directories(include ${catkin_INCLUDE_DIRS})


install(
  PROGRAMS
  scripts/recognition.py
  scripts/send.py
  scripts/receive.py
  scripts/recogwoweb.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

