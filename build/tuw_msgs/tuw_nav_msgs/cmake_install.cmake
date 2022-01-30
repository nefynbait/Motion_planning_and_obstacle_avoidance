# Install script for directory: /home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/souvik/turtlebot/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/msg" TYPE FILE FILES
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/RouteSegment.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/RouteSegments.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/Float64Array.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/Spline.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/JointsIWS.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRAT.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVRATVec.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/IwsCmdVWWTVec.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/DiffDriveCmdVWVec.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/PathVec.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/BaseConstr.msg"
    "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/msg/ControllerState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES "/home/souvik/turtlebot/build/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/souvik/turtlebot/devel/include/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/souvik/turtlebot/devel/share/roseus/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/souvik/turtlebot/devel/share/common-lisp/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/souvik/turtlebot/devel/share/gennodejs/ros/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/souvik/turtlebot/devel/lib/python2.7/dist-packages/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/souvik/turtlebot/devel/lib/python2.7/dist-packages/tuw_nav_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/souvik/turtlebot/build/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES "/home/souvik/turtlebot/build/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs/cmake" TYPE FILE FILES
    "/home/souvik/turtlebot/build/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgsConfig.cmake"
    "/home/souvik/turtlebot/build/tuw_msgs/tuw_nav_msgs/catkin_generated/installspace/tuw_nav_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tuw_nav_msgs" TYPE FILE FILES "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/souvik/turtlebot/devel/lib/libtuw_nav_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so"
         OLD_RPATH "/opt/ros/melodic/lib:/home/souvik/turtlebot/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtuw_nav_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tuw_nav_msgs" TYPE DIRECTORY FILES "/home/souvik/turtlebot/src/tuw_msgs/tuw_nav_msgs/include/tuw_nav_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

