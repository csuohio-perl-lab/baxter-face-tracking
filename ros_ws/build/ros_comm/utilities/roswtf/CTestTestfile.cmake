# CMake generated Testfile for 
# Source directory: /home/ai05/ros_ws/src/ros_comm/utilities/roswtf
# Build directory: /home/ai05/ros_ws/build/ros_comm/utilities/roswtf
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_roswtf_rostest_test_roswtf.test "/home/ai05/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/ai05/ros_ws/build/test_results/roswtf/rostest-test_roswtf.xml" "--return-code" "/home/ai05/ros_ws/src/ros_comm/tools/rostest/scripts/rostest --pkgdir=/home/ai05/ros_ws/src/ros_comm/utilities/roswtf --package=roswtf --results-filename test_roswtf.xml --results-base-dir \"/home/ai05/ros_ws/build/test_results\" /home/ai05/ros_ws/src/ros_comm/utilities/roswtf/test/roswtf.test ")
ADD_TEST(_ctest_roswtf_nosetests_test "/home/ai05/ros_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/ai05/ros_ws/build/test_results/roswtf/nosetests-test.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/ai05/ros_ws/build/test_results/roswtf" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/ai05/ros_ws/src/ros_comm/utilities/roswtf/test --with-xunit --xunit-file=/home/ai05/ros_ws/build/test_results/roswtf/nosetests-test.xml")
