# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/makotomorishita/Desktop/LBNL/GPTune

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/makotomorishita/Desktop/LBNL/GPTune/build

# Include any dependencies generated for this target.
include CMakeFiles/pdqrdriver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pdqrdriver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pdqrdriver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pdqrdriver.dir/flags.make

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.s

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o: CMakeFiles/pdqrdriver.dir/flags.make
CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o: /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building Fortran object CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.i"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f > CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.i

CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.s"
	/Users/makotomorishita/Desktop/LBNL/GPTune/openmpi-4.0.1/bin/mpif90 $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /Users/makotomorishita/Desktop/LBNL/GPTune/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f -o CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.s

# Object files for target pdqrdriver
pdqrdriver_OBJECTS = \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o" \
"CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o"

# External object files for target pdqrdriver
pdqrdriver_EXTERNAL_OBJECTS =

pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrdriver.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdqrinfo.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdmatgen.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqrrv.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdlafchk.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgeqlrv.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgerqrv.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdtzrzrv.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pdgelqrv.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/examples/Scalapack-PDGEQRF/scalapack-driver/src/pmatgeninc.f.o
pdqrdriver: CMakeFiles/pdqrdriver.dir/build.make
pdqrdriver: /opt/homebrew/Cellar/openblas/0.3.23/lib/libblas.dylib
pdqrdriver: /opt/homebrew/Cellar/lapack/3.11/lib/liblapack.dylib
pdqrdriver: /Users/makotomorishita/Desktop/LBNL/GPTune/scalapack-2.1.0/build/install/lib/libscalapack.dylib
pdqrdriver: CMakeFiles/pdqrdriver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking Fortran executable pdqrdriver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pdqrdriver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pdqrdriver.dir/build: pdqrdriver
.PHONY : CMakeFiles/pdqrdriver.dir/build

CMakeFiles/pdqrdriver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pdqrdriver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pdqrdriver.dir/clean

CMakeFiles/pdqrdriver.dir/depend:
	cd /Users/makotomorishita/Desktop/LBNL/GPTune/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/makotomorishita/Desktop/LBNL/GPTune /Users/makotomorishita/Desktop/LBNL/GPTune /Users/makotomorishita/Desktop/LBNL/GPTune/build /Users/makotomorishita/Desktop/LBNL/GPTune/build /Users/makotomorishita/Desktop/LBNL/GPTune/build/CMakeFiles/pdqrdriver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pdqrdriver.dir/depend

