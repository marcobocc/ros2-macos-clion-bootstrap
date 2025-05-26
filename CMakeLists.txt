cmake_minimum_required(VERSION 3.8)
project(package_name)

# Enable C++17
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 17)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)

# Add executable
add_executable(sample_node src/sample_node.cpp)

# Link dependencies
ament_target_dependencies(sample_node rclcpp std_msgs)

# Install the executable
install(TARGETS sample_node DESTINATION lib/${PROJECT_NAME})

# Required for ROS 2 packages
ament_package()
