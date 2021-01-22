# Install script for directory: /home/kunal/catkin_ws/src/segway_sim

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim/msg" TYPE FILE FILES
    "/home/kunal/catkin_ws/src/segway_sim/msg/input.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/state.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/cmd.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/sensor.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/valFunCnst.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/goalSetAndState.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/optSol.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/linearMatrices.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/lowLevelLog.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/highLevelBelief.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/cmdDrone.msg"
    "/home/kunal/catkin_ws/src/segway_sim/msg/stateDrone.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim/srv" TYPE FILE FILES "/home/kunal/catkin_ws/src/segway_sim/srv/ui.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim/cmake" TYPE FILE FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/segway_sim/catkin_generated/installspace/segway_sim-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/include/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/share/roseus/ros/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/share/common-lisp/ros/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/share/gennodejs/ros/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/lib/python2.7/dist-packages/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/devel/lib/python2.7/dist-packages/segway_sim")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/segway_sim/catkin_generated/installspace/segway_sim.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim/cmake" TYPE FILE FILES "/home/kunal/catkin_ws/src/multirate-mpc-cbf/segway_sim/catkin_generated/installspace/segway_sim-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim/cmake" TYPE FILE FILES
    "/home/kunal/catkin_ws/src/multirate-mpc-cbf/segway_sim/catkin_generated/installspace/segway_simConfig.cmake"
    "/home/kunal/catkin_ws/src/multirate-mpc-cbf/segway_sim/catkin_generated/installspace/segway_simConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/segway_sim" TYPE FILE FILES "/home/kunal/catkin_ws/src/segway_sim/package.xml")
endif()

