# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_emulator: 5 messages, 0 services")

set(MSG_I_FLAGS "-Irobot_emulator:/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_emulator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg" NAME_WE)
add_custom_target(_robot_emulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_emulator" "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg" ""
)

get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg" NAME_WE)
add_custom_target(_robot_emulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_emulator" "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg" ""
)

get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg" NAME_WE)
add_custom_target(_robot_emulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_emulator" "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg" ""
)

get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg" NAME_WE)
add_custom_target(_robot_emulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_emulator" "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg" ""
)

get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg" NAME_WE)
add_custom_target(_robot_emulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_emulator" "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
)
_generate_msg_cpp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
)
_generate_msg_cpp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
)
_generate_msg_cpp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
)
_generate_msg_cpp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
)

### Generating Services

### Generating Module File
_generate_module_cpp(robot_emulator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_emulator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_emulator_generate_messages robot_emulator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_cpp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_cpp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_cpp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_cpp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_cpp _robot_emulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_emulator_gencpp)
add_dependencies(robot_emulator_gencpp robot_emulator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_emulator_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
)
_generate_msg_lisp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
)
_generate_msg_lisp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
)
_generate_msg_lisp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
)
_generate_msg_lisp(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
)

### Generating Services

### Generating Module File
_generate_module_lisp(robot_emulator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_emulator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_emulator_generate_messages robot_emulator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_lisp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_lisp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_lisp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_lisp _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_lisp _robot_emulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_emulator_genlisp)
add_dependencies(robot_emulator_genlisp robot_emulator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_emulator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
)
_generate_msg_py(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
)
_generate_msg_py(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
)
_generate_msg_py(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
)
_generate_msg_py(robot_emulator
  "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
)

### Generating Services

### Generating Module File
_generate_module_py(robot_emulator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_emulator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_emulator_generate_messages robot_emulator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/BootResponse.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_py _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Request.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_py _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Error.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_py _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Output.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_py _robot_emulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ed/Dropbox/GitHub/simpleRos/src/robot_emulator/msg/Input.msg" NAME_WE)
add_dependencies(robot_emulator_generate_messages_py _robot_emulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_emulator_genpy)
add_dependencies(robot_emulator_genpy robot_emulator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_emulator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_emulator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robot_emulator_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_emulator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robot_emulator_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_emulator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robot_emulator_generate_messages_py std_msgs_generate_messages_py)
