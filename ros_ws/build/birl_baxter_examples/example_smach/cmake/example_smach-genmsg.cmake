# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "example_smach: 1 messages, 3 services")

set(MSG_I_FLAGS "-Iexample_smach:/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(example_smach_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" NAME_WE)
add_custom_target(_example_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example_smach" "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" ""
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" NAME_WE)
add_custom_target(_example_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example_smach" "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" ""
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_example_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example_smach" "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" NAME_WE)
add_custom_target(_example_smach_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example_smach" "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
)

### Generating Services
_generate_srv_cpp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
)
_generate_srv_cpp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
)
_generate_srv_cpp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
)

### Generating Module File
_generate_module_cpp(example_smach
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(example_smach_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(example_smach_generate_messages example_smach_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_cpp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_cpp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_cpp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" NAME_WE)
add_dependencies(example_smach_generate_messages_cpp _example_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_smach_gencpp)
add_dependencies(example_smach_gencpp example_smach_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_smach_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
)

### Generating Services
_generate_srv_eus(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
)
_generate_srv_eus(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
)
_generate_srv_eus(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
)

### Generating Module File
_generate_module_eus(example_smach
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(example_smach_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(example_smach_generate_messages example_smach_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_eus _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_eus _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_eus _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" NAME_WE)
add_dependencies(example_smach_generate_messages_eus _example_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_smach_geneus)
add_dependencies(example_smach_geneus example_smach_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_smach_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
)

### Generating Services
_generate_srv_lisp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
)
_generate_srv_lisp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
)
_generate_srv_lisp(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
)

### Generating Module File
_generate_module_lisp(example_smach
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(example_smach_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(example_smach_generate_messages example_smach_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_lisp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_lisp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_lisp _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" NAME_WE)
add_dependencies(example_smach_generate_messages_lisp _example_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_smach_genlisp)
add_dependencies(example_smach_genlisp example_smach_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_smach_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
)

### Generating Services
_generate_srv_py(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
)
_generate_srv_py(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
)
_generate_srv_py(example_smach
  "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
)

### Generating Module File
_generate_module_py(example_smach
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(example_smach_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(example_smach_generate_messages example_smach_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddThreeInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_py _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddFourInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_py _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(example_smach_generate_messages_py _example_smach_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ai05/ros_ws/src/birl_baxter_examples/example_smach/msg/Num.msg" NAME_WE)
add_dependencies(example_smach_generate_messages_py _example_smach_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example_smach_genpy)
add_dependencies(example_smach_genpy example_smach_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example_smach_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example_smach
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(example_smach_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example_smach
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(example_smach_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example_smach
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(example_smach_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example_smach
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(example_smach_generate_messages_py std_msgs_generate_messages_py)
