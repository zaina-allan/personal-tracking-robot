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
    for workspace in '/home/zaina/catkin_ws/devel_isolated/ecl_math;/home/zaina/catkin_ws/devel_isolated/ecl_formatters;/home/zaina/catkin_ws/devel_isolated/ecl_converters;/home/zaina/catkin_ws/devel_isolated/ecl_concepts;/home/zaina/catkin_ws/devel_isolated/ecl_type_traits;/home/zaina/catkin_ws/devel_isolated/ecl_tools;/home/zaina/catkin_ws/devel_isolated/ecl_ipc;/home/zaina/catkin_ws/devel_isolated/ecl_time;/home/zaina/catkin_ws/devel_isolated/ecl_time_lite;/home/zaina/catkin_ws/devel_isolated/ecl_sigslots_lite;/home/zaina/catkin_ws/devel_isolated/ecl_navigation;/home/zaina/catkin_ws/devel_isolated/ecl_mpl;/home/zaina/catkin_ws/devel_isolated/ecl_lite;/home/zaina/catkin_ws/devel_isolated/ecl_io;/home/zaina/catkin_ws/devel_isolated/ecl_filesystem;/home/zaina/catkin_ws/devel_isolated/ecl_exceptions;/home/zaina/catkin_ws/devel_isolated/ecl_errors;/home/zaina/catkin_ws/devel_isolated/ecl_eigen;/home/zaina/catkin_ws/devel_isolated/ecl_converters_lite;/home/zaina/catkin_ws/devel_isolated/ecl_console;/home/zaina/catkin_ws/devel_isolated/ecl_config;/home/zaina/catkin_ws/devel_isolated/ecl_command_line;/home/zaina/catkin_ws/devel_isolated/ecl_build;/home/zaina/catkin_ws/devel_isolated/ecl_license;/home/zaina/catkin_ws/devel_isolated/ecl_core;/home/zaina/catkin_ws/devel_isolated/depthimage_to_laserscan;/home/zaina/catkin_ws/devel_isolated/beginner_tutorials;/opt/ros/noetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/env.sh')

output_filename = '/home/zaina/catkin_ws/build_isolated/ecl_linear_algebra/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
