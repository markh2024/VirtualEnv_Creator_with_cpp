# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/C++Code/virtenv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/C++Code/virtenv

# Include any dependencies generated for this target.
include CMakeFiles/VirtualEnv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VirtualEnv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VirtualEnv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VirtualEnv.dir/flags.make

CMakeFiles/VirtualEnv.dir/src/main.cpp.o: CMakeFiles/VirtualEnv.dir/flags.make
CMakeFiles/VirtualEnv.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/VirtualEnv.dir/src/main.cpp.o: CMakeFiles/VirtualEnv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mark/C++Code/virtenv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VirtualEnv.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualEnv.dir/src/main.cpp.o -MF CMakeFiles/VirtualEnv.dir/src/main.cpp.o.d -o CMakeFiles/VirtualEnv.dir/src/main.cpp.o -c /home/mark/C++Code/virtenv/src/main.cpp

CMakeFiles/VirtualEnv.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualEnv.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/C++Code/virtenv/src/main.cpp > CMakeFiles/VirtualEnv.dir/src/main.cpp.i

CMakeFiles/VirtualEnv.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualEnv.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/C++Code/virtenv/src/main.cpp -o CMakeFiles/VirtualEnv.dir/src/main.cpp.s

CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o: CMakeFiles/VirtualEnv.dir/flags.make
CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o: src/virtual_env.cpp
CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o: CMakeFiles/VirtualEnv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mark/C++Code/virtenv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o -MF CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o.d -o CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o -c /home/mark/C++Code/virtenv/src/virtual_env.cpp

CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mark/C++Code/virtenv/src/virtual_env.cpp > CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.i

CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mark/C++Code/virtenv/src/virtual_env.cpp -o CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.s

# Object files for target VirtualEnv
VirtualEnv_OBJECTS = \
"CMakeFiles/VirtualEnv.dir/src/main.cpp.o" \
"CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o"

# External object files for target VirtualEnv
VirtualEnv_EXTERNAL_OBJECTS =

build/VirtualEnv: CMakeFiles/VirtualEnv.dir/src/main.cpp.o
build/VirtualEnv: CMakeFiles/VirtualEnv.dir/src/virtual_env.cpp.o
build/VirtualEnv: CMakeFiles/VirtualEnv.dir/build.make
build/VirtualEnv: CMakeFiles/VirtualEnv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mark/C++Code/virtenv/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable build/VirtualEnv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VirtualEnv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VirtualEnv.dir/build: build/VirtualEnv
.PHONY : CMakeFiles/VirtualEnv.dir/build

CMakeFiles/VirtualEnv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VirtualEnv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VirtualEnv.dir/clean

CMakeFiles/VirtualEnv.dir/depend:
	cd /home/mark/C++Code/virtenv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/C++Code/virtenv /home/mark/C++Code/virtenv /home/mark/C++Code/virtenv /home/mark/C++Code/virtenv /home/mark/C++Code/virtenv/CMakeFiles/VirtualEnv.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/VirtualEnv.dir/depend
