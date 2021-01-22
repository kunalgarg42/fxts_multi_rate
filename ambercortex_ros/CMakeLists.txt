cmake_minimum_required(VERSION 2.8.3)
project(ambercortex_ros)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

add_message_files(
  FILES
  cmd.msg
  state.msg
  sensor.msg
  input.msg
  ctrl_info.msg
)

add_service_files(
  FILES
  logging.srv
)

generate_messages(DEPENDENCIES)

catkin_package()

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(relay src/ros_node.cpp src/relay.cpp)
add_executable(parse_log src/parse_log.cpp)
add_executable(teleop_joy src/teleop_joy.cpp)

add_dependencies(relay ambercortex_ros_generate_messages_cpp)
add_dependencies(parse_log ambercortex_ros_generate_messages_cpp)
add_dependencies(teleop_joy ambercortex_ros_generate_messages_cpp)

target_link_libraries(relay ${catkin_LIBRARIES})
target_link_libraries(teleop_joy ${catkin_LIBRARIES})
