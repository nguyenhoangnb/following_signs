cmake_minimum_required(VERSION 3.0.2)
project(mytest)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
  dynamic_reconfigure
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  AddTwoInts.srv
)

## Generate dynamic reconfigure parameters in the 'cfg' folder
# generate_dynamic_reconfigure_options(
#   cfg/turtle.cfg
# )

## Generate messages in the 'msg' folder
generate_messages(
  DEPENDENCIES
  std_msgs
)

## Declare catkin package
catkin_package()

## Specify additional locations of header files
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare executables
add_executable(turtle src/turtlesim.cpp)
add_executable(subscriber src/subcriber.cpp)
add_executable(pid src/pid.cpp)
add_executable(client src/rosservice.cpp)
add_executable(server src/rosclient.cpp)
add_executable(simple src/turtle.cpp)
add_executable(simple1 src/turtle1.cpp)
# add_executable(cfg_test src/cfg_test.cpp)

## Link executables with catkin libraries
target_link_libraries(turtle ${catkin_LIBRARIES})
target_link_libraries(subscriber ${catkin_LIBRARIES})
target_link_libraries(pid ${catkin_LIBRARIES})
target_link_libraries(client ${catkin_LIBRARIES})
target_link_libraries(server ${catkin_LIBRARIES})
target_link_libraries(simple ${catkin_LIBRARIES})
target_link_libraries(simple1 ${catkin_LIBRARIES})
# target_link_libraries(cfg_test ${catkin_LIBRARIES})

## Add dependencies to the targets
add_dependencies(client ${PROJECT_NAME}_gencpp)
add_dependencies(server ${PROJECT_NAME}_gencpp)
# add_dependencies(cfg_test ${PROJECT_NAME}_gencfg)
