# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ambercortex_ros: 5 messages, 1 services")

set(MSG_I_FLAGS "-Iambercortex_ros:/home/kunal/catkin_ws/src/ambercortex_ros/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ambercortex_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" ""
)

get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" ""
)

get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" ""
)

get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" ""
)

get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" ""
)

get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_custom_target(_ambercortex_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ambercortex_ros" "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)

### Generating Services
_generate_srv_cpp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
)

### Generating Module File
_generate_module_cpp(ambercortex_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ambercortex_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ambercortex_ros_generate_messages ambercortex_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_cpp _ambercortex_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ambercortex_ros_gencpp)
add_dependencies(ambercortex_ros_gencpp ambercortex_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ambercortex_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)

### Generating Services
_generate_srv_eus(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
)

### Generating Module File
_generate_module_eus(ambercortex_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ambercortex_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ambercortex_ros_generate_messages ambercortex_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_eus _ambercortex_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ambercortex_ros_geneus)
add_dependencies(ambercortex_ros_geneus ambercortex_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ambercortex_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)

### Generating Services
_generate_srv_lisp(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
)

### Generating Module File
_generate_module_lisp(ambercortex_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ambercortex_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ambercortex_ros_generate_messages ambercortex_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_lisp _ambercortex_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ambercortex_ros_genlisp)
add_dependencies(ambercortex_ros_genlisp ambercortex_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ambercortex_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)

### Generating Services
_generate_srv_nodejs(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
)

### Generating Module File
_generate_module_nodejs(ambercortex_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ambercortex_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ambercortex_ros_generate_messages ambercortex_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_nodejs _ambercortex_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ambercortex_ros_gennodejs)
add_dependencies(ambercortex_ros_gennodejs ambercortex_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ambercortex_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)
_generate_msg_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)

### Generating Services
_generate_srv_py(ambercortex_ros
  "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
)

### Generating Module File
_generate_module_py(ambercortex_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ambercortex_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ambercortex_ros_generate_messages ambercortex_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/input.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/srv/logging.srv" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/state.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/cmd.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/ctrl_info.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kunal/catkin_ws/src/ambercortex_ros/msg/sensor.msg" NAME_WE)
add_dependencies(ambercortex_ros_generate_messages_py _ambercortex_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ambercortex_ros_genpy)
add_dependencies(ambercortex_ros_genpy ambercortex_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ambercortex_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ambercortex_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ambercortex_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ambercortex_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ambercortex_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ambercortex_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
