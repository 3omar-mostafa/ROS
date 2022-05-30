cmake_minimum_required(VERSION 3.0.2)
project(launcher)

find_package(catkin REQUIRED COMPONENTS
  gmapping
  joy_teleop
  teleop_twist_joy
  teleop_twist_keyboard
  rqt_robot_steering
  joy
  controller_manager
  gazebo_plugins
  gazebo_ros
  gazebo_ros_control
  hardware_interface
  joint_limits_interface
  joint_state_controller
  joint_state_publisher
  robot_state_publisher
  rviz
  xacro
)



catkin_package()

install(DIRECTORY worlds
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
