FILE(REMOVE_RECURSE
  "/home/ai05/ros_ws/devel/lib/libNiTE2.pdb"
  "/home/ai05/ros_ws/devel/lib/libNiTE2.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/NiTE2.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
