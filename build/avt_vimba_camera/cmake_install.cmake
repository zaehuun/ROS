# Install script for directory: /home/jdrjk0000/catkin_ws/src/avt_vimba_camera

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jdrjk0000/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/avt_vimba_camera" TYPE FILE FILES "/home/jdrjk0000/catkin_ws/devel/include/avt_vimba_camera/AvtVimbaCameraConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/avt_vimba_camera" TYPE FILE FILES "/home/jdrjk0000/catkin_ws/devel/include/avt_vimba_camera/AvtVimbaCameraStereoConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/avt_vimba_camera" TYPE FILE FILES "/home/jdrjk0000/catkin_ws/devel/lib/python2.7/dist-packages/avt_vimba_camera/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/jdrjk0000/catkin_ws/devel/lib/python2.7/dist-packages/avt_vimba_camera/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/avt_vimba_camera" TYPE DIRECTORY FILES "/home/jdrjk0000/catkin_ws/devel/lib/python2.7/dist-packages/avt_vimba_camera/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jdrjk0000/catkin_ws/build/avt_vimba_camera/catkin_generated/installspace/avt_vimba_camera.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/avt_vimba_camera/cmake" TYPE FILE FILES
    "/home/jdrjk0000/catkin_ws/build/avt_vimba_camera/catkin_generated/installspace/avt_vimba_cameraConfig.cmake"
    "/home/jdrjk0000/catkin_ws/build/avt_vimba_camera/catkin_generated/installspace/avt_vimba_cameraConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/avt_vimba_camera" TYPE FILE FILES "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera" TYPE EXECUTABLE FILES "/home/jdrjk0000/catkin_ws/devel/lib/avt_vimba_camera/mono_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/lib/64bit:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/mono_camera_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera" TYPE EXECUTABLE FILES "/home/jdrjk0000/catkin_ws/devel/lib/avt_vimba_camera/stereo_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/lib/64bit:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/avt_vimba_camera/stereo_camera_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/jdrjk0000/catkin_ws/devel/lib/libavt_camera_nodelets.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/lib/64bit:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libavt_camera_nodelets.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/avt_vimba_camera" TYPE DIRECTORY FILES "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/include" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/avt_vimba_camera" TYPE FILE FILES
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/plugins.xml"
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/launch/mono_camera.launch"
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/launch/mono_camera_nodelet.launch"
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/launch/stereo_camera_one_node.launch"
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/launch/stereo_camera_two_nodes.launch"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/avt_vimba_camera" TYPE DIRECTORY FILES "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/lib/64bit/libVimbaC.so"
    "/home/jdrjk0000/catkin_ws/src/avt_vimba_camera/lib/64bit/libVimbaCPP.so"
    )
endif()

