# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zaina/catkin_ws/build_isolated/ecl_streams

# Utility rule file for _run_tests_ecl_streams_gtest_ecl_test_string_streams.

# Include the progress variables for this target.
include src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/progress.make

src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && ../../catkin_generated/env_cached.sh /home/zaina/catkin_ws/venv/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/zaina/catkin_ws/build_isolated/ecl_streams/test_results/ecl_streams/gtest-ecl_test_string_streams.xml "/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_string_streams --gtest_output=xml:/home/zaina/catkin_ws/build_isolated/ecl_streams/test_results/ecl_streams/gtest-ecl_test_string_streams.xml"

_run_tests_ecl_streams_gtest_ecl_test_string_streams: src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams
_run_tests_ecl_streams_gtest_ecl_test_string_streams: src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/build.make

.PHONY : _run_tests_ecl_streams_gtest_ecl_test_string_streams

# Rule to build all files generated by this target.
src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/build: _run_tests_ecl_streams_gtest_ecl_test_string_streams

.PHONY : src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/build

src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/clean

src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/_run_tests_ecl_streams_gtest_ecl_test_string_streams.dir/depend

