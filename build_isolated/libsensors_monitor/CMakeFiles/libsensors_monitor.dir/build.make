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
CMAKE_SOURCE_DIR = /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zaina/catkin_ws/build_isolated/libsensors_monitor

# Include any dependencies generated for this target.
include CMakeFiles/libsensors_monitor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libsensors_monitor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libsensors_monitor.dir/flags.make

CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o: CMakeFiles/libsensors_monitor.dir/flags.make
CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o: /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_monitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/libsensors_monitor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o -c /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_monitor.cpp

CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_monitor.cpp > CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.i

CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_monitor.cpp -o CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.s

CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o: CMakeFiles/libsensors_monitor.dir/flags.make
CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o: /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_chip.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zaina/catkin_ws/build_isolated/libsensors_monitor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o -c /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_chip.cpp

CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_chip.cpp > CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.i

CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor/src/libsensors_chip.cpp -o CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.s

# Object files for target libsensors_monitor
libsensors_monitor_OBJECTS = \
"CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o" \
"CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o"

# External object files for target libsensors_monitor
libsensors_monitor_EXTERNAL_OBJECTS =

/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: CMakeFiles/libsensors_monitor.dir/src/libsensors_monitor.cpp.o
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: CMakeFiles/libsensors_monitor.dir/src/libsensors_chip.cpp.o
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: CMakeFiles/libsensors_monitor.dir/build.make
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/libroscpp.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/librosconsole.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/librostime.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /opt/ros/noetic/lib/libcpp_common.so
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor: CMakeFiles/libsensors_monitor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zaina/catkin_ws/build_isolated/libsensors_monitor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libsensors_monitor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libsensors_monitor.dir/build: /home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib/libsensors_monitor/libsensors_monitor

.PHONY : CMakeFiles/libsensors_monitor.dir/build

CMakeFiles/libsensors_monitor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libsensors_monitor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libsensors_monitor.dir/clean

CMakeFiles/libsensors_monitor.dir/depend:
	cd /home/zaina/catkin_ws/build_isolated/libsensors_monitor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor /home/zaina/catkin_ws/src/linux_peripheral_interfaces/libsensors_monitor /home/zaina/catkin_ws/build_isolated/libsensors_monitor /home/zaina/catkin_ws/build_isolated/libsensors_monitor /home/zaina/catkin_ws/build_isolated/libsensors_monitor/CMakeFiles/libsensors_monitor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libsensors_monitor.dir/depend

