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
CMAKE_SOURCE_DIR = /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zaina/catkin_ws/build_isolated/kobuki_ftdi

# Include any dependencies generated for this target.
include src/CMakeFiles/overwrite_serial_number.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/overwrite_serial_number.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/overwrite_serial_number.dir/flags.make

src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o: src/CMakeFiles/overwrite_serial_number.dir/flags.make
src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o: /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi/src/overwrite_serial_number.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/kobuki_ftdi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o -c /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi/src/overwrite_serial_number.cpp

src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.i"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi/src/overwrite_serial_number.cpp > CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.i

src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.s"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi/src/overwrite_serial_number.cpp -o CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.s

# Object files for target overwrite_serial_number
overwrite_serial_number_OBJECTS = \
"CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o"

# External object files for target overwrite_serial_number
overwrite_serial_number_EXTERNAL_OBJECTS =

/home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib/kobuki_ftdi/overwrite_serial_number: src/CMakeFiles/overwrite_serial_number.dir/overwrite_serial_number.cpp.o
/home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib/kobuki_ftdi/overwrite_serial_number: src/CMakeFiles/overwrite_serial_number.dir/build.make
/home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib/kobuki_ftdi/overwrite_serial_number: src/CMakeFiles/overwrite_serial_number.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/kobuki_ftdi/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib/kobuki_ftdi/overwrite_serial_number"
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/overwrite_serial_number.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/overwrite_serial_number.dir/build: /home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib/kobuki_ftdi/overwrite_serial_number

.PHONY : src/CMakeFiles/overwrite_serial_number.dir/build

src/CMakeFiles/overwrite_serial_number.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src && $(CMAKE_COMMAND) -P CMakeFiles/overwrite_serial_number.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/overwrite_serial_number.dir/clean

src/CMakeFiles/overwrite_serial_number.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/kobuki_ftdi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_ftdi/src /home/zaina/catkin_ws/build_isolated/kobuki_ftdi /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src /home/zaina/catkin_ws/build_isolated/kobuki_ftdi/src/CMakeFiles/overwrite_serial_number.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/overwrite_serial_number.dir/depend
