FILE(REMOVE_RECURSE
  "CMakeFiles/roscpp_generate_messages_py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/msg/_Logger.py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/srv/_SetLoggerLevel.py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/srv/_GetLoggers.py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/srv/_Empty.py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/msg/__init__.py"
  "/home/ai05/ros_ws/devel/lib/python2.7/dist-packages/roscpp/srv/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/roscpp_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
