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
include sm/CMakeFiles/log2pdf.dir/depend.make

# Include the progress variables for this target.
include sm/CMakeFiles/log2pdf.dir/progress.make

# Include the compile flags for this target's objects.
include sm/CMakeFiles/log2pdf.dir/flags.make

sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o: sm/CMakeFiles/log2pdf.dir/flags.make
sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o: /home/zaina/catkin_ws/src/csm/sm/apps/log2pdf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/log2pdf.dir/apps/log2pdf.o   -c /home/zaina/catkin_ws/src/csm/sm/apps/log2pdf.c

sm/CMakeFiles/log2pdf.dir/apps/log2pdf.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/log2pdf.dir/apps/log2pdf.i"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zaina/catkin_ws/src/csm/sm/apps/log2pdf.c > CMakeFiles/log2pdf.dir/apps/log2pdf.i

sm/CMakeFiles/log2pdf.dir/apps/log2pdf.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/log2pdf.dir/apps/log2pdf.s"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zaina/catkin_ws/src/csm/sm/apps/log2pdf.c -o CMakeFiles/log2pdf.dir/apps/log2pdf.s

# Object files for target log2pdf
log2pdf_OBJECTS = \
"CMakeFiles/log2pdf.dir/apps/log2pdf.o"

# External object files for target log2pdf
log2pdf_EXTERNAL_OBJECTS =

sm/log2pdf: sm/CMakeFiles/log2pdf.dir/apps/log2pdf.o
sm/log2pdf: sm/CMakeFiles/log2pdf.dir/build.make
sm/log2pdf: sm/libcsm-static.a
sm/log2pdf: sm/CMakeFiles/log2pdf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/csm/devel/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable log2pdf"
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/log2pdf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sm/CMakeFiles/log2pdf.dir/build: sm/log2pdf

.PHONY : sm/CMakeFiles/log2pdf.dir/build

sm/CMakeFiles/log2pdf.dir/clean:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel/sm && $(CMAKE_COMMAND) -P CMakeFiles/log2pdf.dir/cmake_clean.cmake
.PHONY : sm/CMakeFiles/log2pdf.dir/clean

sm/CMakeFiles/log2pdf.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/csm/devel && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/csm /home/zaina/catkin_ws/src/csm/sm /home/zaina/catkin_ws/build_isolated/csm/devel /home/zaina/catkin_ws/build_isolated/csm/devel/sm /home/zaina/catkin_ws/build_isolated/csm/devel/sm/CMakeFiles/log2pdf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sm/CMakeFiles/log2pdf.dir/depend

