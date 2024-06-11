# Install script for directory: /home/zaina/catkin_ws/src/Turtlebot_on_noetic/kobuki_core/kobuki_driver/src/test

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver" TYPE EXECUTABLE FILES "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/kobuki_velocity_commands")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands"
         OLD_RPATH "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib:/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib:/home/zaina/catkin_ws/devel_isolated/ecl_devices/lib:/home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib:/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib:/home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib:/home/zaina/catkin_ws/devel_isolated/ecl_threads/lib:/home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time/lib:/home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib:/home/zaina/catkin_ws/devel_isolated/ecl_errors/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/kobuki_velocity_commands")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver" TYPE EXECUTABLE FILES "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_initialisation")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation"
         OLD_RPATH "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib:/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib:/home/zaina/catkin_ws/devel_isolated/ecl_devices/lib:/home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib:/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib:/home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib:/home/zaina/catkin_ws/devel_isolated/ecl_threads/lib:/home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time/lib:/home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib:/home/zaina/catkin_ws/devel_isolated/ecl_errors/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_initialisation")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver" TYPE EXECUTABLE FILES "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_sigslots")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots"
         OLD_RPATH "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib:/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib:/home/zaina/catkin_ws/devel_isolated/ecl_devices/lib:/home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib:/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib:/home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib:/home/zaina/catkin_ws/devel_isolated/ecl_threads/lib:/home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time/lib:/home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib:/home/zaina/catkin_ws/devel_isolated/ecl_errors/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_sigslots")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver" TYPE EXECUTABLE FILES "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib/kobuki_driver/demo_kobuki_simple_loop")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop"
         OLD_RPATH "/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib:/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib:/home/zaina/catkin_ws/devel_isolated/ecl_devices/lib:/home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib:/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib:/home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib:/home/zaina/catkin_ws/devel_isolated/ecl_threads/lib:/home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time/lib:/home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib:/home/zaina/catkin_ws/devel_isolated/ecl_errors/lib:/home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/kobuki_driver/demo_kobuki_simple_loop")
    endif()
  endif()
endif()

