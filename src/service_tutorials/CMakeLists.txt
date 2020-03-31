cmake_minimum_required(VERSION 2.8.3)
project(service_tutorials)
add_compile_options(-std=c++11)


find_package(catkin REQUIRED COMPONENTS
	message_generation
	roscpp
)


add_service_files(FILES
	SrvTutorial.srv
)


generate_messages(DEPENDENCIES
	std_msgs
)


catkin_package(
	CATKIN_DEPENDS
	message_runtime
)


include_directories(
	include ${catkin_INCLUDE_DIRS}
)


add_executable(service_server
	src/service_server.cpp
)
add_dependencies(service_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(service_server
   ${catkin_LIBRARIES}
)

add_executable(service_client
	src/service_client.cpp
)
add_dependencies(service_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

target_link_libraries(service_client
   ${catkin_LIBRARIES}
)







## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_multiple_topic_pkg.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
