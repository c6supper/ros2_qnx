#!/bin/bash

echo 'Adding COLCON_IGNORE to packages that will not be built for QNX'

echo 'Ignoring vistalization packages'
touch src/ros-visualization/COLCON_IGNORE
touch src/ros2/rviz/COLCON_IGNORE
touch src/ros/ros_tutorials/turtlesim/COLCON_IGNORE

echo 'Ignoring uncrustify'
touch src/ament/uncrustify_vendor/COLCON_IGNORE

echo 'Ignoring CycloneDDS'
touch src/eclipse-cyclonedds/COLCON_IGNORE

echo 'Ignoring mimick'
touch src/ros2/mimick_vendor/COLCON_IGNORE

echo 'Ignoring rttest'
touch src/ros2/realtime_support/rttest/COLCON_IGNORE

echo 'Ignoring pendulum control'
touch src/ros2/demos/pendulum_control/COLCON_IGNORE

echo 'Ignoring pybind11_vendor'
touch src/ros2/pybind11_vendor/COLCON_IGNORE

echo 'Ignoring foonathan_vendor'
touch src/eProsima/foonathan_memory_vendor/COLCON_IGNORE

echo 'Ignoring tinyxml2_vendor'
touch src/ros2/tinyxml2_vendor/COLCON_IGNORE

echo 'Ignoring yaml_cpp_vendor'
touch src/ros2/yaml_cpp_vendor/COLCON_IGNORE

echo 'Ignoring ros-perception'
touch src/ros-perception/COLCON_IGNORE

echo 'Ignoring ros-planning'
touch src/ros-planning/COLCON_IGNORE

echo 'Ignoring opencv_vendor'
touch src/qnx_deps/opencv_vendor/COLCON_IGNORE

echo 'Ignoring bullet3_vendor'
touch src/qnx_deps/bullet3_vendor/COLCON_IGNORE

echo 'Ignoring cyclonedds_vendor'
touch src/qnx_deps/cyclonedds_vendor/COLCON_IGNORE

echo 'Ignoring orocos_kdl_vendor'
touch src/ros2/orocos_kdl_vendor/orocos_kdl_vendor/COLCON_IGNORE

echo 'Ignoring python_orocos_kdl_vendor'
touch src/ros2/orocos_kdl_vendor/python_orocos_kdl_vendor/COLCON_IGNORE

echo 'Ignoring rclpy'
touch src/ros2/rclpy/COLCON_IGNORE

echo 'Ignoring examples'
touch src/ros2/examples/COLCON_IGNORE

echo 'Ignoring rclcpp, because relies on c++17'
touch src/ros2/rclcpp/COLCON_IGNORE
touch src/ros2/rosbag2/rosbag2_test_common/COLCON_IGNORE
touch src/ros2/ros2cli/ros2cli_test_interfaces/COLCON_IGNORE
touch src/ros2/demos/action_tutorials/COLCON_IGNORE
touch src/ros2/realtime_support/tlsf_cpp/COLCON_IGNORE
touch src/ros2/demos/logging_demo/COLCON_IGNORE
touch src/ros2/demos/demo_nodes_cpp/COLCON_IGNORE
touch src/ros2/examples/rclcpp/composition/COLCON_IGNORE
touch src/ros2/demos/demo_nodes_cpp_native/COLCON_IGNORE
touch src/ros2/rosbag2/rosbag2_cpp/COLCON_IGNORE
touch src/ros2/demos/lifecycle/COLCON_IGNORE
touch src/ros2/demos/dummy_robot/dummy_map_server/COLCON_IGNORE
touch src/ros2/message_filters/COLCON_IGNORE
touch src/ros2/demos/topic_statistics_demo/COLCON_IGNORE
touch src/ros2/demos/intra_process_demo/COLCON_IGNORE
touch src/ros2/demos/dummy_robot/dummy_sensors/COLCON_IGNORE
touch src/ros2/demos/quality_of_service_demo/COLCON_IGNORE
touch src/ros2/demos/image_tools/COLCON_IGNORE
touch src/ros2/rosbag2/COLCON_IGNORE
touch src/ros2/demos/composition/COLCON_IGNORE
touch src/ros2/geometry2/tf2_ros_py/COLCON_IGNORE
touch src/ros2/geometry2/tf2_ros_py/tf2_ros/COLCON_IGNORE
touch src/ros2/geometry2/tf2_ros/COLCON_IGNORE
touch src/ros2/ros1_bridge/COLCON_IGNORE
touch src/ros2/geometry2/tf2_sensor_msgs/COLCON_IGNORE
touch src/ros/robot_state_publisher/COLCON_IGNORE
touch src/ros2/geometry2/COLCON_IGNORE
touch src/ros2/ros2cli/ros2lifecycle_test_fixtures/COLCON_IGNORE
# touch src/ros2/launch/test_launch_testing/COLCON_IGNORE

# echo 'Ignoring numpy_vendor'
# touch src/qnx_deps/numpy_vendor/COLCON_IGNORE

# echo 'Ignoring netifaces_vendor'
# touch src/qnx_deps/netifaces_vendor/COLCON_IGNORE

# echo 'Ignoring rmw_connextdds'
# touch src/ros2/rmw_connextdds/COLCON_IGNORE

# echo 'Ignoring ignition_math6_vendor'
# touch src/ignition/ignition_math6_vendor/COLCON_IGNORE

# echo 'Ignoring orocos_kdl_vendor'
# touch src/ros2/orocos_kdl_vendor/orocos_kdl_vendor/COLCON_IGNORE
# touch src/ros2/orocos_kdl_vendor/python_orocos_kdl_vendor/COLCON_IGNORE

# echo 'Ignoring python3 related'
# touch src/ros2/demos/pendulum_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/builtin_interfaces/COLCON_IGNORE
# touch src/ros2/rosidl_python/COLCON_IGNORE
# touch src/ros2/common_interfaces/std_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/rosgraph_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/rcl_interfaces/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/test_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/statistics_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/lifecycle_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/action_msgs/COLCON_IGNORE
# touch src/ros2/rcl_interfaces/composition_interfaces/COLCON_IGNORE
