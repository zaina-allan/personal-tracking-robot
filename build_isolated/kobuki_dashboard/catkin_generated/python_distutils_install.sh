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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/zaina/catkin_ws/src/kobuki_desktop/kobuki_dashboard"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zaina/catkin_ws/install_isolated/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zaina/catkin_ws/install_isolated/lib/python3/dist-packages:/home/zaina/catkin_ws/build_isolated/kobuki_dashboard/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zaina/catkin_ws/build_isolated/kobuki_dashboard" \
    "/home/zaina/catkin_ws/venv/bin/python3" \
    "/home/zaina/catkin_ws/src/kobuki_desktop/kobuki_dashboard/setup.py" \
     \
    build --build-base "/home/zaina/catkin_ws/build_isolated/kobuki_dashboard" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/zaina/catkin_ws/install_isolated" --install-scripts="/home/zaina/catkin_ws/install_isolated/bin"
