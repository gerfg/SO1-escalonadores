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
CMAKE_SOURCE_DIR = /home/geraldo/Documents/SO1-escalonadores

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/geraldo/Documents/SO1-escalonadores/build

# Include any dependencies generated for this target.
include CMakeFiles/util.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/util.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/util.dir/flags.make

CMakeFiles/util.dir/util.cpp.o: CMakeFiles/util.dir/flags.make
CMakeFiles/util.dir/util.cpp.o: ../util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/geraldo/Documents/SO1-escalonadores/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/util.dir/util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/util.dir/util.cpp.o -c /home/geraldo/Documents/SO1-escalonadores/util.cpp

CMakeFiles/util.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/geraldo/Documents/SO1-escalonadores/util.cpp > CMakeFiles/util.dir/util.cpp.i

CMakeFiles/util.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/geraldo/Documents/SO1-escalonadores/util.cpp -o CMakeFiles/util.dir/util.cpp.s

CMakeFiles/util.dir/util.cpp.o.requires:

.PHONY : CMakeFiles/util.dir/util.cpp.o.requires

CMakeFiles/util.dir/util.cpp.o.provides: CMakeFiles/util.dir/util.cpp.o.requires
	$(MAKE) -f CMakeFiles/util.dir/build.make CMakeFiles/util.dir/util.cpp.o.provides.build
.PHONY : CMakeFiles/util.dir/util.cpp.o.provides

CMakeFiles/util.dir/util.cpp.o.provides.build: CMakeFiles/util.dir/util.cpp.o


# Object files for target util
util_OBJECTS = \
"CMakeFiles/util.dir/util.cpp.o"

# External object files for target util
util_EXTERNAL_OBJECTS =

libutil.a: CMakeFiles/util.dir/util.cpp.o
libutil.a: CMakeFiles/util.dir/build.make
libutil.a: CMakeFiles/util.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/geraldo/Documents/SO1-escalonadores/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libutil.a"
	$(CMAKE_COMMAND) -P CMakeFiles/util.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/util.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/util.dir/build: libutil.a

.PHONY : CMakeFiles/util.dir/build

CMakeFiles/util.dir/requires: CMakeFiles/util.dir/util.cpp.o.requires

.PHONY : CMakeFiles/util.dir/requires

CMakeFiles/util.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/util.dir/cmake_clean.cmake
.PHONY : CMakeFiles/util.dir/clean

CMakeFiles/util.dir/depend:
	cd /home/geraldo/Documents/SO1-escalonadores/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/geraldo/Documents/SO1-escalonadores /home/geraldo/Documents/SO1-escalonadores /home/geraldo/Documents/SO1-escalonadores/build /home/geraldo/Documents/SO1-escalonadores/build /home/geraldo/Documents/SO1-escalonadores/build/CMakeFiles/util.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/util.dir/depend

