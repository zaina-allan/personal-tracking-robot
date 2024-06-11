# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(turtlebot_interactive_markers_CONFIG_INCLUDED)
  return()
endif()
set(turtlebot_interactive_markers_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(turtlebot_interactive_markers_SOURCE_PREFIX /home/zaina/catkin_ws/src/Turtlebot_on_noetic/turtlebot_viz/turtlebot_interactive_markers)
  set(turtlebot_interactive_markers_DEVEL_PREFIX /home/zaina/catkin_ws/devel_isolated/turtlebot_interactive_markers)
  set(turtlebot_interactive_markers_INSTALL_PREFIX "")
  set(turtlebot_interactive_markers_PREFIX ${turtlebot_interactive_markers_DEVEL_PREFIX})
else()
  set(turtlebot_interactive_markers_SOURCE_PREFIX "")
  set(turtlebot_interactive_markers_DEVEL_PREFIX "")
  set(turtlebot_interactive_markers_INSTALL_PREFIX /home/zaina/catkin_ws/install_isolated)
  set(turtlebot_interactive_markers_PREFIX ${turtlebot_interactive_markers_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'turtlebot_interactive_markers' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(turtlebot_interactive_markers_FOUND_CATKIN_PROJECT TRUE)

if(NOT " " STREQUAL " ")
  set(turtlebot_interactive_markers_INCLUDE_DIRS "")
  set(_include_dirs "")
  if(NOT "https://github.com/turtlebot/turtlebot_viz/issues " STREQUAL " ")
    set(_report "Check the issue tracker 'https://github.com/turtlebot/turtlebot_viz/issues' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://ros.org/wiki/turtlebot_interactive_markers " STREQUAL " ")
    set(_report "Check the website 'http://ros.org/wiki/turtlebot_interactive_markers' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Daniel Stonier <stonier@yujinrobot.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${turtlebot_interactive_markers_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'turtlebot_interactive_markers' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'turtlebot_interactive_markers' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(turtlebot_interactive_markers_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND turtlebot_interactive_markers_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND turtlebot_interactive_markers_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT turtlebot_interactive_markers_NUM_DUMMY_TARGETS)
      set(turtlebot_interactive_markers_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::turtlebot_interactive_markers::wrapped-linker-option${turtlebot_interactive_markers_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR turtlebot_interactive_markers_NUM_DUMMY_TARGETS "${turtlebot_interactive_markers_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::turtlebot_interactive_markers::wrapped-linker-option${turtlebot_interactive_markers_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND turtlebot_interactive_markers_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND turtlebot_interactive_markers_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND turtlebot_interactive_markers_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/zaina/catkin_ws/install_isolated/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_gazebo/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_description/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_dashboard/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_capabilities/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_calibration/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_bringup/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_apps/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot_actions/lib;/home/zaina/catkin_ws/devel_isolated/turtlebot/lib;/home/zaina/catkin_ws/devel_isolated/scan_tools/lib;/home/zaina/catkin_ws/devel_isolated/scan_to_cloud_converter/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_xbee/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_windows/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_vex_v5/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_vex_cortex/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_tivac/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_test/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_server/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_python/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_embeddedlinux/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_client/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_msgs/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_mbed/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_chibios/lib;/home/zaina/catkin_ws/devel_isolated/rosserial_arduino/lib;/home/zaina/catkin_ws/devel_isolated/rosserial/lib;/home/zaina/catkin_ws/devel_isolated/polar_scan_matcher/lib;/home/zaina/catkin_ws/devel_isolated/obstacle-avoidance-turtlebot/lib;/home/zaina/catkin_ws/devel_isolated/ncd_parser/lib;/home/zaina/catkin_ws/devel_isolated/linux_peripheral_interfaces/lib;/home/zaina/catkin_ws/devel_isolated/libsensors_monitor/lib;/home/zaina/catkin_ws/devel_isolated/laser_scan_splitter/lib;/home/zaina/catkin_ws/devel_isolated/laser_scan_sparsifier/lib;/home/zaina/catkin_ws/devel_isolated/laser_scan_matcher/lib;/home/zaina/catkin_ws/devel_isolated/laser_ortho_projector/lib;/home/zaina/catkin_ws/devel_isolated/laptop_battery_monitor/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_rviz_launchers/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_rapps/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_keyop/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_gazebo_plugins/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_dashboard/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_bumper2pc/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_auto_docking/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_msgs/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_gazebo/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_ftdi/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_driver/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_dock_drive/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_desktop/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_description/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_core/lib;/home/zaina/catkin_ws/devel_isolated/kobuki_capabilities/lib;/home/zaina/catkin_ws/devel_isolated/kobuki/lib;/home/zaina/catkin_ws/devel_isolated/freenect_stack/lib;/home/zaina/catkin_ws/devel_isolated/freenect_camera/lib;/home/zaina/catkin_ws/devel_isolated/ecl_core_apps/lib;/home/zaina/catkin_ws/devel_isolated/ecl_streams/lib;/home/zaina/catkin_ws/devel_isolated/ecl_sigslots/lib;/home/zaina/catkin_ws/devel_isolated/ecl_devices/lib;/home/zaina/catkin_ws/devel_isolated/ecl_threads/lib;/home/zaina/catkin_ws/devel_isolated/ecl_mobile_robot/lib;/home/zaina/catkin_ws/devel_isolated/ecl_geometry/lib;/home/zaina/catkin_ws/devel_isolated/ecl_containers/lib;/home/zaina/catkin_ws/devel_isolated/ecl_utilities/lib;/home/zaina/catkin_ws/devel_isolated/ecl_statistics/lib;/home/zaina/catkin_ws/devel_isolated/ecl_linear_algebra/lib;/home/zaina/catkin_ws/devel_isolated/ecl_math/lib;/home/zaina/catkin_ws/devel_isolated/ecl_formatters/lib;/home/zaina/catkin_ws/devel_isolated/ecl_converters/lib;/home/zaina/catkin_ws/devel_isolated/ecl_concepts/lib;/home/zaina/catkin_ws/devel_isolated/ecl_type_traits/lib;/home/zaina/catkin_ws/devel_isolated/ecl_tools/lib;/home/zaina/catkin_ws/devel_isolated/ecl_ipc/lib;/home/zaina/catkin_ws/devel_isolated/ecl_time/lib;/home/zaina/catkin_ws/devel_isolated/ecl_time_lite/lib;/home/zaina/catkin_ws/devel_isolated/ecl_sigslots_lite/lib;/home/zaina/catkin_ws/devel_isolated/ecl_navigation/lib;/home/zaina/catkin_ws/devel_isolated/ecl_mpl/lib;/home/zaina/catkin_ws/devel_isolated/ecl_lite/lib;/home/zaina/catkin_ws/devel_isolated/ecl_io/lib;/home/zaina/catkin_ws/devel_isolated/ecl_filesystem/lib;/home/zaina/catkin_ws/devel_isolated/ecl_exceptions/lib;/home/zaina/catkin_ws/devel_isolated/ecl_errors/lib;/home/zaina/catkin_ws/devel_isolated/ecl_eigen/lib;/home/zaina/catkin_ws/devel_isolated/ecl_converters_lite/lib;/home/zaina/catkin_ws/devel_isolated/ecl_console/lib;/home/zaina/catkin_ws/devel_isolated/ecl_config/lib;/home/zaina/catkin_ws/devel_isolated/ecl_command_line/lib;/home/zaina/catkin_ws/devel_isolated/ecl_build/lib;/home/zaina/catkin_ws/devel_isolated/ecl_license/lib;/home/zaina/catkin_ws/devel_isolated/ecl_core/lib;/home/zaina/catkin_ws/devel_isolated/depthimage_to_laserscan/lib;/home/zaina/catkin_ws/devel_isolated/beginner_tutorials/lib;/opt/ros/noetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(turtlebot_interactive_markers_LIBRARY_DIRS ${lib_path})
      list(APPEND turtlebot_interactive_markers_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'turtlebot_interactive_markers'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND turtlebot_interactive_markers_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(turtlebot_interactive_markers_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${turtlebot_interactive_markers_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 turtlebot_interactive_markers_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${turtlebot_interactive_markers_dep}_FOUND)
      find_package(${turtlebot_interactive_markers_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${turtlebot_interactive_markers_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(turtlebot_interactive_markers_INCLUDE_DIRS ${${turtlebot_interactive_markers_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(turtlebot_interactive_markers_LIBRARIES ${turtlebot_interactive_markers_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${turtlebot_interactive_markers_dep}_LIBRARIES})
  _list_append_deduplicate(turtlebot_interactive_markers_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(turtlebot_interactive_markers_LIBRARIES ${turtlebot_interactive_markers_LIBRARIES})

  _list_append_unique(turtlebot_interactive_markers_LIBRARY_DIRS ${${turtlebot_interactive_markers_dep}_LIBRARY_DIRS})
  _list_append_deduplicate(turtlebot_interactive_markers_EXPORTED_TARGETS ${${turtlebot_interactive_markers_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${turtlebot_interactive_markers_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
