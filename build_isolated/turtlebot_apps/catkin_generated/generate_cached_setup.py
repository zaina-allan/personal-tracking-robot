# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/noetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/noetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/zaina/catkin_ws/devel_isolated/turtlebot_actions;/home/zaina/catkin_ws/devel_isolated/turtlebot;/home/zaina/catkin_ws/devel_isolated/scan_tools;/home/zaina/catkin_ws/devel_isolated/scan_to_cloud_converter;/home/zaina/catkin_ws/devel_isolated/rosserial_xbee;/home/zaina/catkin_ws/devel_isolated/rosserial_windows;/home/zaina/catkin_ws/devel_isolated/rosserial_vex_v5;/home/zaina/catkin_ws/devel_isolated/rosserial_vex_cortex;/home/zaina/catkin_ws/devel_isolated/rosserial_tivac;/home/zaina/catkin_ws/devel_isolated/rosserial_test;/home/zaina/catkin_ws/devel_isolated/rosserial_server;/home/zaina/catkin_ws/devel_isolated/rosserial_python;/home/zaina/catkin_ws/devel_isolated/rosserial_embeddedlinux;/home/zaina/catkin_ws/devel_isolated/rosserial_client;/home/zaina/catkin_ws/devel_isolated/rosserial_msgs;/home/zaina/catkin_ws/devel_isolated/rosserial_mbed;/home/zaina/catkin_ws/devel_isolated/rosserial_chibios;/home/zaina/catkin_ws/devel_isolated/rosserial_arduino;/home/zaina/catkin_ws/devel_isolated/rosserial;/home/zaina/catkin_ws/devel_isolated/polar_scan_matcher;/home/zaina/catkin_ws/devel_isolated/obstacle-avoidance-turtlebot;/home/zaina/catkin_ws/devel_isolated/ncd_parser;/home/zaina/catkin_ws/devel_isolated/linux_peripheral_interfaces;/home/zaina/catkin_ws/devel_isolated/libsensors_monitor;/home/zaina/catkin_ws/devel_isolated/laser_scan_splitter;/home/zaina/catkin_ws/devel_isolated/laser_scan_sparsifier;/home/zaina/catkin_ws/devel_isolated/laser_scan_matcher;/home/zaina/catkin_ws/devel_isolated/laser_ortho_projector;/home/zaina/catkin_ws/devel_isolated/laptop_battery_monitor;/home/zaina/catkin_ws/devel_isolated/kobuki_rviz_launchers;/home/zaina/catkin_ws/devel_isolated/kobuki_rapps;/home/zaina/catkin_ws/devel_isolated/kobuki_keyop;/home/zaina/catkin_ws/devel_isolated/kobuki_gazebo_plugins;/home/zaina/catkin_ws/devel_isolated/kobuki_dashboard;/home/zaina/catkin_ws/devel_isolated/kobuki_bumper2pc;/home/zaina/catkin_ws/devel_isolated/kobuki_auto_docking;/home/zaina/catkin_ws/devel_isolated/kobuki_msgs;/home/zaina/catkin_ws/devel_isolated/kobuki_gazebo;/home/zaina/catkin_ws/devel_isolated/kobuki_ftdi;/home/zaina/catkin_ws/devel_isolated/kobuki_driver;/home/zaina/catkin_ws/devel_isolated/kobuki_dock_drive;/home/zaina/catkin_ws/devel_isolated/kobuki_desktop;/home/zaina/catkin_ws/devel_isolated/kobuki_description;/home/zaina/catkin_ws/devel_isolated/kobuki_core;/home/zaina/catkin_ws/devel_isolated/kobuki_capabilities;/home/zaina/catkin_ws/devel_isolated/kobuki;/home/zaina/catkin_ws/devel_isolated/freenect_stack;/home/zaina/catkin_ws/devel_isolated/freenect_camera;/home/zaina/catkin_ws/devel_isolated/ecl_core_apps;/home/zaina/catkin_ws/devel_isolated/ecl_streams;/home/zaina/catkin_ws/devel_isolated/ecl_sigslots;/home/zaina/catkin_ws/devel_isolated/ecl_devices;/home/zaina/catkin_ws/devel_isolated/ecl_threads;/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot;/home/zaina/catkin_ws/devel_isolated/ecl_geometry;/home/zaina/catkin_ws/devel_isolated/ecl_containers;/home/zaina/catkin_ws/devel_isolated/ecl_utilities;/home/zaina/catkin_ws/devel_isolated/ecl_statistics;/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra;/home/zaina/catkin_ws/devel_isolated/ecl_math;/home/zaina/catkin_ws/devel_isolated/ecl_formatters;/home/zaina/catkin_ws/devel_isolated/ecl_converters;/home/zaina/catkin_ws/devel_isolated/ecl_concepts;/home/zaina/catkin_ws/devel_isolated/ecl_type_traits;/home/zaina/catkin_ws/devel_isolated/ecl_tools;/home/zaina/catkin_ws/devel_isolated/ecl_ipc;/home/zaina/catkin_ws/devel_isolated/ecl_time;/home/zaina/catkin_ws/devel_isolated/ecl_time_lite;/home/zaina/catkin_ws/devel_isolated/ecl_sigslots_lite;/home/zaina/catkin_ws/devel_isolated/ecl_navigation;/home/zaina/catkin_ws/devel_isolated/ecl_mpl;/home/zaina/catkin_ws/devel_isolated/ecl_lite;/home/zaina/catkin_ws/devel_isolated/ecl_io;/home/zaina/catkin_ws/devel_isolated/ecl_filesystem;/home/zaina/catkin_ws/devel_isolated/ecl_exceptions;/home/zaina/catkin_ws/devel_isolated/ecl_errors;/home/zaina/catkin_ws/devel_isolated/ecl_eigen;/home/zaina/catkin_ws/devel_isolated/ecl_converters_lite;/home/zaina/catkin_ws/devel_isolated/ecl_console;/home/zaina/catkin_ws/devel_isolated/ecl_config;/home/zaina/catkin_ws/devel_isolated/ecl_command_line;/home/zaina/catkin_ws/devel_isolated/ecl_build;/home/zaina/catkin_ws/devel_isolated/ecl_license;/home/zaina/catkin_ws/devel_isolated/ecl_core;/home/zaina/catkin_ws/devel_isolated/depthimage_to_laserscan;/home/zaina/catkin_ws/devel_isolated/beginner_tutorials;/opt/ros/noetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/zaina/catkin_ws/devel_isolated/turtlebot_apps/env.sh')

output_filename = '/home/zaina/catkin_ws/build_isolated/turtlebot_apps/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
