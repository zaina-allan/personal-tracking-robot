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

# Utility rule file for clean_test_results_ecl_streams.

# Include the progress variables for this target.
include src/test/CMakeFiles/clean_test_results_ecl_streams.dir/progress.make

src/test/CMakeFiles/clean_test_results_ecl_streams:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && /home/zaina/catkin_ws/venv/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/zaina/catkin_ws/build_isolated/ecl_streams/test_results/ecl_streams

clean_test_results_ecl_streams: src/test/CMakeFiles/clean_test_results_ecl_streams
clean_test_results_ecl_streams: src/test/CMakeFiles/clean_test_results_ecl_streams.dir/build.make

.PHONY : clean_test_results_ecl_streams

# Rule to build all files generated by this target.
src/test/CMakeFiles/clean_test_results_ecl_streams.dir/build: clean_test_results_ecl_streams

.PHONY : src/test/CMakeFiles/clean_test_results_ecl_streams.dir/build

src/test/CMakeFiles/clean_test_results_ecl_streams.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_ecl_streams.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/clean_test_results_ecl_streams.dir/clean

src/test/CMakeFiles/clean_test_results_ecl_streams.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test/CMakeFiles/clean_test_results_ecl_streams.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/clean_test_results_ecl_streams.dir/depend

