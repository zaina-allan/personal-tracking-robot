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
include sm/CMakeFiles/json2carmen.dir/depend.make

# Include the progress variables for this target.
include sm/CMakeFiles/json2carmen.dir/progress.make

# Include the compile flags for this target's objects.
include sm/CMakeFiles/json2carmen.dir/flags.make

sm/CMakeFiles/json2carmen.dir/apps/json2carmen.o: sm/CMakeFiles/json2carmen.dir/flags.make
sm/CMakeFiles/json2carmen.dir/apps/json2carmen.o: /home/zaina/catkin_ws/src/csm/sm/apps/json2carmen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sm/CMakeFiles/json2carmen.dir/apps/json2carmen.o"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/json2carmen.dir/apps/json2carmen.o   -c /home/zaina/catkin_ws/src/csm/sm/apps/json2carmen.c

sm/CMakeFiles/json2carmen.dir/apps/json2carmen.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/json2carmen.dir/apps/json2carmen.i"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zaina/catkin_ws/src/csm/sm/apps/json2carmen.c > CMakeFiles/json2carmen.dir/apps/json2carmen.i

sm/CMakeFiles/json2carmen.dir/apps/json2carmen.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/json2carmen.dir/apps/json2carmen.s"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zaina/catkin_ws/src/csm/sm/apps/json2carmen.c -o CMakeFiles/json2carmen.dir/apps/json2carmen.s

# Object files for target json2carmen
json2carmen_OBJECTS = \
"CMakeFiles/json2carmen.dir/apps/json2carmen.o"

# External object files for target json2carmen
json2carmen_EXTERNAL_OBJECTS =

sm/json2carmen: sm/CMakeFiles/json2carmen.dir/apps/json2carmen.o
sm/json2carmen: sm/CMakeFiles/json2carmen.dir/build.make
sm/json2carmen: sm/libcsm-static.a
sm/json2carmen: sm/CMakeFiles/json2carmen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable json2carmen"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/json2carmen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sm/CMakeFiles/json2carmen.dir/build: sm/json2carmen

.PHONY : sm/CMakeFiles/json2carmen.dir/build

sm/CMakeFiles/json2carmen.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && $(CMAKE_COMMAND) -P CMakeFiles/json2carmen.dir/cmake_clean.cmake
.PHONY : sm/CMakeFiles/json2carmen.dir/clean

sm/CMakeFiles/json2carmen.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/csm /home/zaina/catkin_ws/src/csm/sm /home/zaina/catkin_ws/build_isolated/csm/devel /home/zaina/catkin_ws/build_isolated/csm/devel/sm /home/zaina/catkin_ws/build_isolated/csm/devel/sm/CMakeFiles/json2carmen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sm/CMakeFiles/json2carmen.dir/depend

