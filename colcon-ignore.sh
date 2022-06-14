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

# echo 'Ignoring numpy'
# touch src/qnx_deps/numpy_vendor/COLCON_IGNORE

echo 'Ignoring ros-visualization'
touch src/ros-visualization/COLCON_IGNORE

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

echo 'Ignoring numpy_vendor'
touch src/qnx_deps/numpy_vendor/COLCON_IGNORE

echo 'Ignoring netifaces_vendor'
touch src/qnx_deps/netifaces_vendor/COLCON_IGNORE

echo 'Ignoring rmw_connextdds'
touch src/ros2/rmw_connextdds/COLCON_IGNORE

