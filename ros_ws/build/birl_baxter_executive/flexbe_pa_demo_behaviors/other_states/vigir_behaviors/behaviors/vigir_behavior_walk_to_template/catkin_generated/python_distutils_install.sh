#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ai05/ros_ws/src/birl_baxter_executive/flexbe_pa_demo_behaviors/other_states/vigir_behaviors/behaviors/vigir_behavior_walk_to_template"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ai05/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ai05/ros_ws/install/lib/python2.7/dist-packages:/home/ai05/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ai05/ros_ws/build" \
    "/usr/bin/python" \
    "/home/ai05/ros_ws/src/birl_baxter_executive/flexbe_pa_demo_behaviors/other_states/vigir_behaviors/behaviors/vigir_behavior_walk_to_template/setup.py" \
    build --build-base "/home/ai05/ros_ws/build/birl_baxter_executive/flexbe_pa_demo_behaviors/other_states/vigir_behaviors/behaviors/vigir_behavior_walk_to_template" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ai05/ros_ws/install" --install-scripts="/home/ai05/ros_ws/install/bin"
