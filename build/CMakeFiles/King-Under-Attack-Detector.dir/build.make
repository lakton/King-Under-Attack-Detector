# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lakton/Desktop/King-Under-Attack-Detector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lakton/Desktop/King-Under-Attack-Detector/build

# Include any dependencies generated for this target.
include CMakeFiles/King-Under-Attack-Detector.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/King-Under-Attack-Detector.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/King-Under-Attack-Detector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/King-Under-Attack-Detector.dir/flags.make

CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o: CMakeFiles/King-Under-Attack-Detector.dir/flags.make
CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o: ../main.cpp
CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o: CMakeFiles/King-Under-Attack-Detector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lakton/Desktop/King-Under-Attack-Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o -MF CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o.d -o CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o -c /home/lakton/Desktop/King-Under-Attack-Detector/main.cpp

CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lakton/Desktop/King-Under-Attack-Detector/main.cpp > CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.i

CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lakton/Desktop/King-Under-Attack-Detector/main.cpp -o CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.s

CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o: CMakeFiles/King-Under-Attack-Detector.dir/flags.make
CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o: ../ChessMath.cpp
CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o: CMakeFiles/King-Under-Attack-Detector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lakton/Desktop/King-Under-Attack-Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o -MF CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o.d -o CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o -c /home/lakton/Desktop/King-Under-Attack-Detector/ChessMath.cpp

CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lakton/Desktop/King-Under-Attack-Detector/ChessMath.cpp > CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.i

CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lakton/Desktop/King-Under-Attack-Detector/ChessMath.cpp -o CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.s

# Object files for target King-Under-Attack-Detector
King__Under__Attack__Detector_OBJECTS = \
"CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o" \
"CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o"

# External object files for target King-Under-Attack-Detector
King__Under__Attack__Detector_EXTERNAL_OBJECTS =

King-Under-Attack-Detector: CMakeFiles/King-Under-Attack-Detector.dir/main.cpp.o
King-Under-Attack-Detector: CMakeFiles/King-Under-Attack-Detector.dir/ChessMath.cpp.o
King-Under-Attack-Detector: CMakeFiles/King-Under-Attack-Detector.dir/build.make
King-Under-Attack-Detector: CMakeFiles/King-Under-Attack-Detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lakton/Desktop/King-Under-Attack-Detector/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable King-Under-Attack-Detector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/King-Under-Attack-Detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/King-Under-Attack-Detector.dir/build: King-Under-Attack-Detector
.PHONY : CMakeFiles/King-Under-Attack-Detector.dir/build

CMakeFiles/King-Under-Attack-Detector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/King-Under-Attack-Detector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/King-Under-Attack-Detector.dir/clean

CMakeFiles/King-Under-Attack-Detector.dir/depend:
	cd /home/lakton/Desktop/King-Under-Attack-Detector/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lakton/Desktop/King-Under-Attack-Detector /home/lakton/Desktop/King-Under-Attack-Detector /home/lakton/Desktop/King-Under-Attack-Detector/build /home/lakton/Desktop/King-Under-Attack-Detector/build /home/lakton/Desktop/King-Under-Attack-Detector/build/CMakeFiles/King-Under-Attack-Detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/King-Under-Attack-Detector.dir/depend
