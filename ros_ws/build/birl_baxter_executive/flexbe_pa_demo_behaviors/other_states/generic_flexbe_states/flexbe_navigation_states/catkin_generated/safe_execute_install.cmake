execute_process(COMMAND "/home/ai05/ros_ws/build/birl_baxter_executive/flexbe_pa_demo_behaviors/other_states/generic_flexbe_states/flexbe_navigation_states/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ai05/ros_ws/build/birl_baxter_executive/flexbe_pa_demo_behaviors/other_states/generic_flexbe_states/flexbe_navigation_states/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
