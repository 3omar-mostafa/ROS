cmake_minimum_required(VERSION 3.0.2)
project(rosbot_description)

add_compile_options(-std=c++11)


find_package(catkin REQUIRED COMPONENTS
  controller_interface
  controller_manager
  diff_drive_controller
  gazebo_plugins
  gazebo_ros
  gazebo_ros_control
  hardware_interface
  joint_limits_interface
  joint_state_controller
  joint_state_publisher
  robot_state_publisher
  rviz
  transmission_interface
  xacro
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES aaa
#  CATKIN_DEPENDS controller_interface controller_manager diff_drive_controller gazebo_plugins gazebo_ros gazebo_ros_control hardware_interface joint_limits_interface joint_state_controller joint_state_publisher robot_state_publisher rviz transmission_interface xacro
#  DEPENDS system_lib
)

install(DIRECTORY mesh
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

install(DIRECTORY rviz
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

