execute_process(COMMAND "/home/ai05/ros_ws/build/birl_baxter_examples/example_gui/example_button_gui/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ai05/ros_ws/build/birl_baxter_examples/example_gui/example_button_gui/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
