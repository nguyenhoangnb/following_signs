# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nguyenhoang/turtlesim/src/mytest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nguyenhoang/turtlesim/src/mytest/build

# Include any dependencies generated for this target.
include CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple.dir/flags.make

CMakeFiles/simple.dir/src/turtle.cpp.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/turtle.cpp.o: ../src/turtle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyenhoang/turtlesim/src/mytest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple.dir/src/turtle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/turtle.cpp.o -c /home/nguyenhoang/turtlesim/src/mytest/src/turtle.cpp

CMakeFiles/simple.dir/src/turtle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/turtle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyenhoang/turtlesim/src/mytest/src/turtle.cpp > CMakeFiles/simple.dir/src/turtle.cpp.i

CMakeFiles/simple.dir/src/turtle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/turtle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyenhoang/turtlesim/src/mytest/src/turtle.cpp -o CMakeFiles/simple.dir/src/turtle.cpp.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/src/turtle.cpp.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

devel/lib/mytest/simple: CMakeFiles/simple.dir/src/turtle.cpp.o
devel/lib/mytest/simple: CMakeFiles/simple.dir/build.make
devel/lib/mytest/simple: /opt/ros/noetic/lib/libroscpp.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/mytest/simple: /opt/ros/noetic/lib/librosconsole.so
devel/lib/mytest/simple: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/mytest/simple: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/mytest/simple: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/mytest/simple: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/mytest/simple: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/mytest/simple: /opt/ros/noetic/lib/librostime.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/mytest/simple: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/mytest/simple: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/mytest/simple: CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nguyenhoang/turtlesim/src/mytest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/mytest/simple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple.dir/build: devel/lib/mytest/simple

.PHONY : CMakeFiles/simple.dir/build

CMakeFiles/simple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple.dir/clean

CMakeFiles/simple.dir/depend:
	cd /home/nguyenhoang/turtlesim/src/mytest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nguyenhoang/turtlesim/src/mytest /home/nguyenhoang/turtlesim/src/mytest /home/nguyenhoang/turtlesim/src/mytest/build /home/nguyenhoang/turtlesim/src/mytest/build /home/nguyenhoang/turtlesim/src/mytest/build/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple.dir/depend

