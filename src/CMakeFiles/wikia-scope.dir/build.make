# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /var/www/ubuntu-sdk-tutorials/scopes/wikia

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /var/www/ubuntu-sdk-tutorials/scopes/wikia

# Include any dependencies generated for this target.
include src/CMakeFiles/wikia-scope.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/wikia-scope.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/wikia-scope.dir/flags.make

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o: src/CMakeFiles/wikia-scope.dir/flags.make
src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o: src/wikia-preview.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/ubuntu-sdk-tutorials/scopes/wikia/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o -c /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-preview.cpp

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wikia-scope.dir/wikia-preview.cpp.i"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-preview.cpp > CMakeFiles/wikia-scope.dir/wikia-preview.cpp.i

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wikia-scope.dir/wikia-preview.cpp.s"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-preview.cpp -o CMakeFiles/wikia-scope.dir/wikia-preview.cpp.s

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.requires:
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.requires

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.provides: src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/wikia-scope.dir/build.make src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.provides.build
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.provides

src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.provides.build: src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o: src/CMakeFiles/wikia-scope.dir/flags.make
src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o: src/wikia-query.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/ubuntu-sdk-tutorials/scopes/wikia/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wikia-scope.dir/wikia-query.cpp.o -c /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-query.cpp

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wikia-scope.dir/wikia-query.cpp.i"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-query.cpp > CMakeFiles/wikia-scope.dir/wikia-query.cpp.i

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wikia-scope.dir/wikia-query.cpp.s"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-query.cpp -o CMakeFiles/wikia-scope.dir/wikia-query.cpp.s

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.requires:
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.requires

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.provides: src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/wikia-scope.dir/build.make src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.provides.build
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.provides

src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.provides.build: src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o: src/CMakeFiles/wikia-scope.dir/flags.make
src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o: src/wikia-scope.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/ubuntu-sdk-tutorials/scopes/wikia/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o -c /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-scope.cpp

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wikia-scope.dir/wikia-scope.cpp.i"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-scope.cpp > CMakeFiles/wikia-scope.dir/wikia-scope.cpp.i

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wikia-scope.dir/wikia-scope.cpp.s"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/wikia-scope.cpp -o CMakeFiles/wikia-scope.dir/wikia-scope.cpp.s

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.requires:
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.requires

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.provides: src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/wikia-scope.dir/build.make src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.provides.build
.PHONY : src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.provides

src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.provides.build: src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o

# Object files for target wikia-scope
wikia__scope_OBJECTS = \
"CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o" \
"CMakeFiles/wikia-scope.dir/wikia-query.cpp.o" \
"CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o"

# External object files for target wikia-scope
wikia__scope_EXTERNAL_OBJECTS =

src/libwikia-scope.so: src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o
src/libwikia-scope.so: src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o
src/libwikia-scope.so: src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o
src/libwikia-scope.so: src/CMakeFiles/wikia-scope.dir/build.make
src/libwikia-scope.so: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.3.0
src/libwikia-scope.so: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.3.0
src/libwikia-scope.so: src/CMakeFiles/wikia-scope.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libwikia-scope.so"
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wikia-scope.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/wikia-scope.dir/build: src/libwikia-scope.so
.PHONY : src/CMakeFiles/wikia-scope.dir/build

src/CMakeFiles/wikia-scope.dir/requires: src/CMakeFiles/wikia-scope.dir/wikia-preview.cpp.o.requires
src/CMakeFiles/wikia-scope.dir/requires: src/CMakeFiles/wikia-scope.dir/wikia-query.cpp.o.requires
src/CMakeFiles/wikia-scope.dir/requires: src/CMakeFiles/wikia-scope.dir/wikia-scope.cpp.o.requires
.PHONY : src/CMakeFiles/wikia-scope.dir/requires

src/CMakeFiles/wikia-scope.dir/clean:
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia/src && $(CMAKE_COMMAND) -P CMakeFiles/wikia-scope.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/wikia-scope.dir/clean

src/CMakeFiles/wikia-scope.dir/depend:
	cd /var/www/ubuntu-sdk-tutorials/scopes/wikia && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/www/ubuntu-sdk-tutorials/scopes/wikia /var/www/ubuntu-sdk-tutorials/scopes/wikia/src /var/www/ubuntu-sdk-tutorials/scopes/wikia /var/www/ubuntu-sdk-tutorials/scopes/wikia/src /var/www/ubuntu-sdk-tutorials/scopes/wikia/src/CMakeFiles/wikia-scope.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/wikia-scope.dir/depend

