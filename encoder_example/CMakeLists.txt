cmake_minimum_required(VERSION 3.0.2)
project(encoder_example)


find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  std_msgs
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
include
${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/encoder_example.cpp
# )
add_executable(encoder_example_node
  src/encoder.cpp
)


target_link_libraries(encoder_example_node
${catkin_LIBRARIES}
)