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

# Include any dependencies generated for this target.
include src/test/CMakeFiles/ecl_test_file_streams.dir/depend.make

# Include the progress variables for this target.
include src/test/CMakeFiles/ecl_test_file_streams.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/CMakeFiles/ecl_test_file_streams.dir/flags.make

src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o: src/test/CMakeFiles/ecl_test_file_streams.dir/flags.make
src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o: /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test/file_streams.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/ecl_streams/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o"
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o -c /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test/file_streams.cpp

src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.i"
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test/file_streams.cpp > CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.i

src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.s"
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test/file_streams.cpp -o CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.s

# Object files for target ecl_test_file_streams
ecl_test_file_streams_OBJECTS = \
"CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o"

# External object files for target ecl_test_file_streams
ecl_test_file_streams_EXTERNAL_OBJECTS =

/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: src/test/CMakeFiles/ecl_test_file_streams.dir/file_streams.cpp.o
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: src/test/CMakeFiles/ecl_test_file_streams.dir/build.make
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: gtest/lib/libgtest.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/libecl_streams.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_devices/lib/libecl_devices.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib/libecl_formatters.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_threads/lib/libecl_threads.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_time/lib/libecl_time.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib/libecl_time_lite.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /usr/lib/x86_64-linux-gnu/librt.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib/libecl_exceptions.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_errors/lib/libecl_errors.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: /home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib/libecl_type_traits.so
/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams: src/test/CMakeFiles/ecl_test_file_streams.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/ecl_streams/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams"
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ecl_test_file_streams.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/CMakeFiles/ecl_test_file_streams.dir/build: /home/zaina/catkin_ws/devel_isolated/ecl_streams/lib/ecl_streams/ecl_test_file_streams

.PHONY : src/test/CMakeFiles/ecl_test_file_streams.dir/build

src/test/CMakeFiles/ecl_test_file_streams.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test && $(CMAKE_COMMAND) -P CMakeFiles/ecl_test_file_streams.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/ecl_test_file_streams.dir/clean

src/test/CMakeFiles/ecl_test_file_streams.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/ecl_streams && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test /home/zaina/catkin_ws/build_isolated/ecl_streams/src/test/CMakeFiles/ecl_test_file_streams.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/ecl_test_file_streams.dir/depend

