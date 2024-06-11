# Install script for directory: /home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zaina/catkin_ws/install_isolated")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecl/geometry" TYPE FILE FILES
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/angle.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/cartesian_point.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/cubic_spline.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/function_math.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/homogeneous_point.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/legacy_pose2d.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/legacy_pose3d.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/linear_segment.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/macros.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/odometry.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/odometry_helper.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/odometry_typedefs.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/pascals_triangle.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/polynomial.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/pose.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/smooth_linear_spline.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/spline_function.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/tension_function.hpp"
    "/home/zaina/catkin_ws/src/Turtlebot_on_noetic/ecl_core/ecl_geometry/include/ecl/geometry/tension_spline.hpp"
    )
endif()
