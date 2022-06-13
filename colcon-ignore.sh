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

