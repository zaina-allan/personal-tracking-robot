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
CMAKE_SOURCE_DIR = /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zaina/catkin_ws/build_isolated/kobuki_driver

# Include any dependencies generated for this target.
include src/test/CMakeFiles/demo_kobuki_initialisation.dir/depend.make

# Include the progress variables for this target.
include src/test/CMakeFiles/demo_kobuki_initialisation.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/CMakeFiles/demo_kobuki_initialisation.dir/flags.make

src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o: src/test/CMakeFiles/demo_kobuki_initialisation.dir/flags.make
src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o: /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test/initialisation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/kobuki_driver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o -c /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test/initialisation.cpp

src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.i"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test/initialisation.cpp > CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.i

src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.s"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test/initialisation.cpp -o CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.s

# Object files for target demo_kobuki_initialisation
demo_kobuki_initialisation_OBJECTS = \
"CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o"

# External object files for target demo_kobuki_initialisation
demo_kobuki_initialisation_EXTERNAL_OBJECTS =

/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: src/test/CMakeFiles/demo_kobuki_initialisation.dir/initialisation.cpp.o
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: src/test/CMakeFiles/demo_kobuki_initialisation.dir/build.make
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/libkobuki.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib/libecl_mobile_robot.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_devices/lib/libecl_devices.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib/libecl_geometry.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib/libecl_linear_algebra.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib/libecl_formatters.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_threads/lib/libecl_threads.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib/libecl_type_traits.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_time/lib/libecl_time.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib/libecl_exceptions.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_errors/lib/libecl_errors.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib/libecl_time_lite.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: /usr/lib/x86_64-linux-gnu/librt.so
/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation: src/test/CMakeFiles/demo_kobuki_initialisation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/kobuki_driver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_kobuki_initialisation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/CMakeFiles/demo_kobuki_initialisation.dir/build: /home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation

.PHONY : src/test/CMakeFiles/demo_kobuki_initialisation.dir/build

src/test/CMakeFiles/demo_kobuki_initialisation.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test && $(CMAKE_COMMAND) -P CMakeFiles/demo_kobuki_initialisation.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/demo_kobuki_initialisation.dir/clean

src/test/CMakeFiles/demo_kobuki_initialisation.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/kobuki_driver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test /home/zaina/catkin_ws/build_isolated/kobuki_driver /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test /home/zaina/catkin_ws/build_isolated/kobuki_driver/src/test/CMakeFiles/demo_kobuki_initialisation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/demo_kobuki_initialisation.dir/depend
