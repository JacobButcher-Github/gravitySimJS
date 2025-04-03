# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/osarukun/repos/gravitySim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osarukun/repos/gravitySim

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/osarukun/repos/gravitySim/CMakeFiles /home/osarukun/repos/gravitySim//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/osarukun/repos/gravitySim/CMakeFiles 0
.PHONY : all

# The main codegen target
codegen: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/osarukun/repos/gravitySim/CMakeFiles /home/osarukun/repos/gravitySim//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 codegen
	$(CMAKE_COMMAND) -E cmake_progress_start /home/osarukun/repos/gravitySim/CMakeFiles 0
.PHONY : codegen

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named glad

# Build rule for target.
glad: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 glad
.PHONY : glad

# fast build rule for target.
glad/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/build
.PHONY : glad/fast

#=============================================================================
# Target rules for targets named gravitySim

# Build rule for target.
gravitySim: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 gravitySim
.PHONY : gravitySim

# fast build rule for target.
gravitySim/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gravitySim.dir/build.make CMakeFiles/gravitySim.dir/build
.PHONY : gravitySim/fast

src/glad.o: src/glad.c.o
.PHONY : src/glad.o

# target to build an object file
src/glad.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.o
.PHONY : src/glad.c.o

src/glad.i: src/glad.c.i
.PHONY : src/glad.i

# target to preprocess a source file
src/glad.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.i
.PHONY : src/glad.c.i

src/glad.s: src/glad.c.s
.PHONY : src/glad.s

# target to generate assembly for a file
src/glad.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/glad.dir/build.make CMakeFiles/glad.dir/src/glad.c.s
.PHONY : src/glad.c.s

src/gravity_sim.o: src/gravity_sim.cpp.o
.PHONY : src/gravity_sim.o

# target to build an object file
src/gravity_sim.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gravitySim.dir/build.make CMakeFiles/gravitySim.dir/src/gravity_sim.cpp.o
.PHONY : src/gravity_sim.cpp.o

src/gravity_sim.i: src/gravity_sim.cpp.i
.PHONY : src/gravity_sim.i

# target to preprocess a source file
src/gravity_sim.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gravitySim.dir/build.make CMakeFiles/gravitySim.dir/src/gravity_sim.cpp.i
.PHONY : src/gravity_sim.cpp.i

src/gravity_sim.s: src/gravity_sim.cpp.s
.PHONY : src/gravity_sim.s

# target to generate assembly for a file
src/gravity_sim.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/gravitySim.dir/build.make CMakeFiles/gravitySim.dir/src/gravity_sim.cpp.s
.PHONY : src/gravity_sim.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... codegen"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... glad"
	@echo "... gravitySim"
	@echo "... src/glad.o"
	@echo "... src/glad.i"
	@echo "... src/glad.s"
	@echo "... src/gravity_sim.o"
	@echo "... src/gravity_sim.i"
	@echo "... src/gravity_sim.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

