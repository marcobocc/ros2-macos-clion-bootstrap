FROM ros:jazzy-ros-core
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    make \
    gdb \
    ros-jazzy-rclcpp \
    ros-jazzy-ros-base \
    ros-jazzy-ament-cmake \
    python3-colcon-common-extensions
