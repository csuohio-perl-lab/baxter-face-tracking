# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "birl_sim_examples: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(birl_sim_examples_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" NAME_WE)
add_custom_target(_birl_sim_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "birl_sim_examples" "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" "std_msgs/Bool"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" NAME_WE)
add_custom_target(_birl_sim_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "birl_sim_examples" "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" "geometry_msgs/Point:std_msgs/Bool:geometry_msgs/Quaternion:std_msgs/String:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" NAME_WE)
add_custom_target(_birl_sim_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "birl_sim_examples" "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" "std_msgs/Bool"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" NAME_WE)
add_custom_target(_birl_sim_examples_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "birl_sim_examples" "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" "geometry_msgs/Quaternion:std_msgs/Bool:geometry_msgs/Point:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_cpp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_cpp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_cpp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
)

### Generating Module File
_generate_module_cpp(birl_sim_examples
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(birl_sim_examples_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(birl_sim_examples_generate_messages birl_sim_examples_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_cpp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_cpp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_cpp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_cpp _birl_sim_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(birl_sim_examples_gencpp)
add_dependencies(birl_sim_examples_gencpp birl_sim_examples_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS birl_sim_examples_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_eus(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_eus(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_eus(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
)

### Generating Module File
_generate_module_eus(birl_sim_examples
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(birl_sim_examples_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(birl_sim_examples_generate_messages birl_sim_examples_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_eus _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_eus _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_eus _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_eus _birl_sim_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(birl_sim_examples_geneus)
add_dependencies(birl_sim_examples_geneus birl_sim_examples_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS birl_sim_examples_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_lisp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_lisp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_lisp(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
)

### Generating Module File
_generate_module_lisp(birl_sim_examples
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(birl_sim_examples_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(birl_sim_examples_generate_messages birl_sim_examples_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_lisp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_lisp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_lisp _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_lisp _birl_sim_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(birl_sim_examples_genlisp)
add_dependencies(birl_sim_examples_genlisp birl_sim_examples_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS birl_sim_examples_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_py(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_py(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
)
_generate_srv_py(birl_sim_examples
  "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
)

### Generating Module File
_generate_module_py(birl_sim_examples
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(birl_sim_examples_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(birl_sim_examples_generate_messages birl_sim_examples_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Gripper_Move.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_py _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Add_Gazebo_Model.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_py _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Start_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_py _birl_sim_examples_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_simulator/birl_sim_examples/srv/Go_To_Position.srv" NAME_WE)
add_dependencies(birl_sim_examples_generate_messages_py _birl_sim_examples_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(birl_sim_examples_genpy)
add_dependencies(birl_sim_examples_genpy birl_sim_examples_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS birl_sim_examples_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/birl_sim_examples
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(birl_sim_examples_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(birl_sim_examples_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/birl_sim_examples
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(birl_sim_examples_generate_messages_eus std_msgs_generate_messages_eus)
add_dependencies(birl_sim_examples_generate_messages_eus geometry_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/birl_sim_examples
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(birl_sim_examples_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(birl_sim_examples_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/birl_sim_examples
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(birl_sim_examples_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(birl_sim_examples_generate_messages_py geometry_msgs_generate_messages_py)
