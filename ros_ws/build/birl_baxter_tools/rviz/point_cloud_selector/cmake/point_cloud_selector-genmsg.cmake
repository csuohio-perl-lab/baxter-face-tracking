# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "point_cloud_selector: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ipoint_cloud_selector:/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg;-Iroscpp:/home/ai05/ros_ws/src/ros_comm/clients/roscpp/msg;-Ivisualization_msgs:/opt/ros/indigo/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Itf:/opt/ros/indigo/share/tf/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(point_cloud_selector_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" NAME_WE)
add_custom_target(_point_cloud_selector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "point_cloud_selector" "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" NAME_WE)
add_custom_target(_point_cloud_selector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "point_cloud_selector" "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" NAME_WE)
add_custom_target(_point_cloud_selector_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "point_cloud_selector" "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" "std_msgs/ColorRGBA"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector
)

### Generating Services
_generate_srv_cpp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector
)
_generate_srv_cpp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector
)

### Generating Module File
_generate_module_cpp(point_cloud_selector
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(point_cloud_selector_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(point_cloud_selector_generate_messages point_cloud_selector_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_cpp _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_cpp _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_cpp _point_cloud_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(point_cloud_selector_gencpp)
add_dependencies(point_cloud_selector_gencpp point_cloud_selector_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS point_cloud_selector_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector
)

### Generating Services
_generate_srv_eus(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector
)
_generate_srv_eus(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector
)

### Generating Module File
_generate_module_eus(point_cloud_selector
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(point_cloud_selector_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(point_cloud_selector_generate_messages point_cloud_selector_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_eus _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_eus _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_eus _point_cloud_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(point_cloud_selector_geneus)
add_dependencies(point_cloud_selector_geneus point_cloud_selector_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS point_cloud_selector_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector
)

### Generating Services
_generate_srv_lisp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector
)
_generate_srv_lisp(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector
)

### Generating Module File
_generate_module_lisp(point_cloud_selector
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(point_cloud_selector_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(point_cloud_selector_generate_messages point_cloud_selector_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_lisp _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_lisp _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_lisp _point_cloud_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(point_cloud_selector_genlisp)
add_dependencies(point_cloud_selector_genlisp point_cloud_selector_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS point_cloud_selector_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector
)

### Generating Services
_generate_srv_py(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector
)
_generate_srv_py(point_cloud_selector
  "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/ColorRGBA.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector
)

### Generating Module File
_generate_module_py(point_cloud_selector
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(point_cloud_selector_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(point_cloud_selector_generate_messages point_cloud_selector_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/msg/CylinderProperties.msg" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_py _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SelectCylinder.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_py _point_cloud_selector_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_tools/rviz/point_cloud_selector/srv/SetCylinderProperties.srv" NAME_WE)
add_dependencies(point_cloud_selector_generate_messages_py _point_cloud_selector_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(point_cloud_selector_genpy)
add_dependencies(point_cloud_selector_genpy point_cloud_selector_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS point_cloud_selector_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/point_cloud_selector
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(point_cloud_selector_generate_messages_cpp roscpp_generate_messages_cpp)
add_dependencies(point_cloud_selector_generate_messages_cpp visualization_msgs_generate_messages_cpp)
add_dependencies(point_cloud_selector_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(point_cloud_selector_generate_messages_cpp tf_generate_messages_cpp)
add_dependencies(point_cloud_selector_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/point_cloud_selector
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(point_cloud_selector_generate_messages_eus roscpp_generate_messages_eus)
add_dependencies(point_cloud_selector_generate_messages_eus visualization_msgs_generate_messages_eus)
add_dependencies(point_cloud_selector_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(point_cloud_selector_generate_messages_eus tf_generate_messages_eus)
add_dependencies(point_cloud_selector_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/point_cloud_selector
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(point_cloud_selector_generate_messages_lisp roscpp_generate_messages_lisp)
add_dependencies(point_cloud_selector_generate_messages_lisp visualization_msgs_generate_messages_lisp)
add_dependencies(point_cloud_selector_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(point_cloud_selector_generate_messages_lisp tf_generate_messages_lisp)
add_dependencies(point_cloud_selector_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/point_cloud_selector
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(point_cloud_selector_generate_messages_py roscpp_generate_messages_py)
add_dependencies(point_cloud_selector_generate_messages_py visualization_msgs_generate_messages_py)
add_dependencies(point_cloud_selector_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(point_cloud_selector_generate_messages_py tf_generate_messages_py)
add_dependencies(point_cloud_selector_generate_messages_py std_msgs_generate_messages_py)
