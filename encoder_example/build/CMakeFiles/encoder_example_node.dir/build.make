# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/kim/kim_ws/src/encoder_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kim/kim_ws/src/encoder_example/build

# Include any dependencies generated for this target.
include CMakeFiles/encoder_example_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/encoder_example_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/encoder_example_node.dir/flags.make

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o: CMakeFiles/encoder_example_node.dir/flags.make
CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o: ../src/encoder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kim/kim_ws/src/encoder_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o"
	/usr/bin/aarch64-linux-gnu-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o -c /home/kim/kim_ws/src/encoder_example/src/encoder.cpp

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/encoder_example_node.dir/src/encoder.cpp.i"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kim/kim_ws/src/encoder_example/src/encoder.cpp > CMakeFiles/encoder_example_node.dir/src/encoder.cpp.i

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/encoder_example_node.dir/src/encoder.cpp.s"
	/usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kim/kim_ws/src/encoder_example/src/encoder.cpp -o CMakeFiles/encoder_example_node.dir/src/encoder.cpp.s

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.requires:

.PHONY : CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.requires

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.provides: CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.requires
	$(MAKE) -f CMakeFiles/encoder_example_node.dir/build.make CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.provides.build
.PHONY : CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.provides

CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.provides.build: CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o


# Object files for target encoder_example_node
encoder_example_node_OBJECTS = \
"CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o"

# External object files for target encoder_example_node
encoder_example_node_EXTERNAL_OBJECTS =

encoder_example_node: CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o
encoder_example_node: CMakeFiles/encoder_example_node.dir/build.make
encoder_example_node: /opt/ros/melodic/lib/libroscpp.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
encoder_example_node: /opt/ros/melodic/lib/librosconsole.so
encoder_example_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
encoder_example_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_regex.so
encoder_example_node: /opt/ros/melodic/lib/libxmlrpcpp.so
encoder_example_node: /opt/ros/melodic/lib/libroscpp_serialization.so
encoder_example_node: /opt/ros/melodic/lib/librostime.so
encoder_example_node: /opt/ros/melodic/lib/libcpp_common.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_system.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_thread.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libpthread.so
encoder_example_node: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
encoder_example_node: CMakeFiles/encoder_example_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kim/kim_ws/src/encoder_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable encoder_example_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/encoder_example_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/encoder_example_node.dir/build: encoder_example_node

.PHONY : CMakeFiles/encoder_example_node.dir/build

CMakeFiles/encoder_example_node.dir/requires: CMakeFiles/encoder_example_node.dir/src/encoder.cpp.o.requires

.PHONY : CMakeFiles/encoder_example_node.dir/requires

CMakeFiles/encoder_example_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/encoder_example_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/encoder_example_node.dir/clean

CMakeFiles/encoder_example_node.dir/depend:
	cd /home/kim/kim_ws/src/encoder_example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kim/kim_ws/src/encoder_example /home/kim/kim_ws/src/encoder_example /home/kim/kim_ws/src/encoder_example/build /home/kim/kim_ws/src/encoder_example/build /home/kim/kim_ws/src/encoder_example/build/CMakeFiles/encoder_example_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/encoder_example_node.dir/depend

