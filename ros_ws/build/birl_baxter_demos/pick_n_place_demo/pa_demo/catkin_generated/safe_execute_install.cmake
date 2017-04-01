execute_process(COMMAND "/home/ai05/ros_ws/build/birl_baxter_demos/pick_n_place_demo/pa_demo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ai05/ros_ws/build/birl_baxter_demos/pick_n_place_demo/pa_demo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
