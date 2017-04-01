# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "force_controller: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iforce_controller:/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg;-Ibaxter_core_msgs:/home/ai05/ros_ws/src/baxter_common/baxter_core_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(force_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" NAME_WE)
add_custom_target(_force_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "force_controller" "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" NAME_WE)
add_custom_target(_force_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "force_controller" "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_controller
)

### Generating Services
_generate_srv_cpp(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_controller
)

### Generating Module File
_generate_module_cpp(force_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(force_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(force_controller_generate_messages force_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" NAME_WE)
add_dependencies(force_controller_generate_messages_cpp _force_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" NAME_WE)
add_dependencies(force_controller_generate_messages_cpp _force_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_controller_gencpp)
add_dependencies(force_controller_gencpp force_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_controller
)

### Generating Services
_generate_srv_eus(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_controller
)

### Generating Module File
_generate_module_eus(force_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(force_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(force_controller_generate_messages force_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" NAME_WE)
add_dependencies(force_controller_generate_messages_eus _force_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" NAME_WE)
add_dependencies(force_controller_generate_messages_eus _force_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_controller_geneus)
add_dependencies(force_controller_geneus force_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_controller
)

### Generating Services
_generate_srv_lisp(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_controller
)

### Generating Module File
_generate_module_lisp(force_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(force_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(force_controller_generate_messages force_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" NAME_WE)
add_dependencies(force_controller_generate_messages_lisp _force_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" NAME_WE)
add_dependencies(force_controller_generate_messages_lisp _force_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_controller_genlisp)
add_dependencies(force_controller_genlisp force_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_controller_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller
)

### Generating Services
_generate_srv_py(force_controller
  "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller
)

### Generating Module File
_generate_module_py(force_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(force_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(force_controller_generate_messages force_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/srv/forceControl.srv" NAME_WE)
add_dependencies(force_controller_generate_messages_py _force_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_controllers/force_controller/msg/setPoint.msg" NAME_WE)
add_dependencies(force_controller_generate_messages_py _force_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(force_controller_genpy)
add_dependencies(force_controller_genpy force_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS force_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/force_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(force_controller_generate_messages_cpp baxter_core_msgs_generate_messages_cpp)
add_dependencies(force_controller_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(force_controller_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(force_controller_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/force_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(force_controller_generate_messages_eus baxter_core_msgs_generate_messages_eus)
add_dependencies(force_controller_generate_messages_eus geometry_msgs_generate_messages_eus)
add_dependencies(force_controller_generate_messages_eus sensor_msgs_generate_messages_eus)
add_dependencies(force_controller_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/force_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(force_controller_generate_messages_lisp baxter_core_msgs_generate_messages_lisp)
add_dependencies(force_controller_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(force_controller_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(force_controller_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/force_controller/.+/__init__.pyc?$"
  )
endif()
add_dependencies(force_controller_generate_messages_py baxter_core_msgs_generate_messages_py)
add_dependencies(force_controller_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(force_controller_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(force_controller_generate_messages_py std_msgs_generate_messages_py)
