# CMake generated Testfile for 
# Source directory: /home/zaina/catkin_ws/src/csm/sm
# Build directory: /home/zaina/catkin_ws/build_isolated/csm/devel/sm
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_math_utils_sanity "test_math_utils_sanity")
set_tests_properties(test_math_utils_sanity PROPERTIES  _BACKTRACE_TRIPLES "/home/zaina/catkin_ws/src/csm/sm/CMakeLists.txt;136;ADD_TEST;/home/zaina/catkin_ws/src/csm/sm/CMakeLists.txt;0;")
subdirs("lib/options")
subdirs("lib/json-c")
subdirs("lib/egsl")
subdirs("lib/gpc")
subdirs("csm")
subdirs("pkg-config")
