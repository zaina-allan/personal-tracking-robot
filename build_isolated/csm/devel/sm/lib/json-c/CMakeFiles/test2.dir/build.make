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
CMAKE_SOURCE_DIR = /home/zaina/catkin_ws/src/csm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zaina/catkin_ws/build_isolated/csm/devel

# Include any dependencies generated for this target.
include sm/lib/json-c/CMakeFiles/test2.dir/depend.make

# Include the progress variables for this target.
include sm/lib/json-c/CMakeFiles/test2.dir/progress.make

# Include the compile flags for this target's objects.
include sm/lib/json-c/CMakeFiles/test2.dir/flags.make

sm/lib/json-c/CMakeFiles/test2.dir/test2.o: sm/lib/json-c/CMakeFiles/test2.dir/flags.make
sm/lib/json-c/CMakeFiles/test2.dir/test2.o: /home/zaina/catkin_ws/src/csm/sm/lib/json-c/test2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sm/lib/json-c/CMakeFiles/test2.dir/test2.o"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test2.dir/test2.o   -c /home/zaina/catkin_ws/src/csm/sm/lib/json-c/test2.c

sm/lib/json-c/CMakeFiles/test2.dir/test2.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test2.dir/test2.i"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zaina/catkin_ws/src/csm/sm/lib/json-c/test2.c > CMakeFiles/test2.dir/test2.i

sm/lib/json-c/CMakeFiles/test2.dir/test2.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test2.dir/test2.s"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zaina/catkin_ws/src/csm/sm/lib/json-c/test2.c -o CMakeFiles/test2.dir/test2.s

# Object files for target test2
test2_OBJECTS = \
"CMakeFiles/test2.dir/test2.o"

# External object files for target test2
test2_EXTERNAL_OBJECTS =

sm/lib/json-c/test2: sm/lib/json-c/CMakeFiles/test2.dir/test2.o
sm/lib/json-c/test2: sm/lib/json-c/CMakeFiles/test2.dir/build.make
sm/lib/json-c/test2: sm/lib/json-c/libjson-c.a
sm/lib/json-c/test2: sm/lib/json-c/CMakeFiles/test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test2"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sm/lib/json-c/CMakeFiles/test2.dir/build: sm/lib/json-c/test2

.PHONY : sm/lib/json-c/CMakeFiles/test2.dir/build

sm/lib/json-c/CMakeFiles/test2.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c && $(CMAKE_COMMAND) -P CMakeFiles/test2.dir/cmake_clean.cmake
.PHONY : sm/lib/json-c/CMakeFiles/test2.dir/clean

sm/lib/json-c/CMakeFiles/test2.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/csm /home/zaina/catkin_ws/src/csm/sm/lib/json-c /home/zaina/catkin_ws/build_isolated/csm/devel /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c /home/zaina/catkin_ws/build_isolated/csm/devel/sm/lib/json-c/CMakeFiles/test2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sm/lib/json-c/CMakeFiles/test2.dir/depend
