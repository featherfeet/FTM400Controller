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
CMAKE_SOURCE_DIR = /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build

# Include any dependencies generated for this target.
include esp-idf/newlib/CMakeFiles/__idf_newlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/newlib/CMakeFiles/__idf_newlib.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj: /home/oliver/esp/esp-idf/components/newlib/abort.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj -MF CMakeFiles/__idf_newlib.dir/abort.c.obj.d -o CMakeFiles/__idf_newlib.dir/abort.c.obj -c /home/oliver/esp/esp-idf/components/newlib/abort.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/abort.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/abort.c > CMakeFiles/__idf_newlib.dir/abort.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/abort.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/abort.c -o CMakeFiles/__idf_newlib.dir/abort.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj: /home/oliver/esp/esp-idf/components/newlib/heap.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj -MF CMakeFiles/__idf_newlib.dir/heap.c.obj.d -o CMakeFiles/__idf_newlib.dir/heap.c.obj -c /home/oliver/esp/esp-idf/components/newlib/heap.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/heap.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -E /home/oliver/esp/esp-idf/components/newlib/heap.c > CMakeFiles/__idf_newlib.dir/heap.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/heap.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -fno-builtin -S /home/oliver/esp/esp-idf/components/newlib/heap.c -o CMakeFiles/__idf_newlib.dir/heap.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj: /home/oliver/esp/esp-idf/components/newlib/locks.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj -MF CMakeFiles/__idf_newlib.dir/locks.c.obj.d -o CMakeFiles/__idf_newlib.dir/locks.c.obj -c /home/oliver/esp/esp-idf/components/newlib/locks.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/locks.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/locks.c > CMakeFiles/__idf_newlib.dir/locks.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/locks.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/locks.c -o CMakeFiles/__idf_newlib.dir/locks.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj: /home/oliver/esp/esp-idf/components/newlib/poll.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj -MF CMakeFiles/__idf_newlib.dir/poll.c.obj.d -o CMakeFiles/__idf_newlib.dir/poll.c.obj -c /home/oliver/esp/esp-idf/components/newlib/poll.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/poll.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/poll.c > CMakeFiles/__idf_newlib.dir/poll.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/poll.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/poll.c -o CMakeFiles/__idf_newlib.dir/poll.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj: /home/oliver/esp/esp-idf/components/newlib/pthread.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj -MF CMakeFiles/__idf_newlib.dir/pthread.c.obj.d -o CMakeFiles/__idf_newlib.dir/pthread.c.obj -c /home/oliver/esp/esp-idf/components/newlib/pthread.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/pthread.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/pthread.c > CMakeFiles/__idf_newlib.dir/pthread.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/pthread.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/pthread.c -o CMakeFiles/__idf_newlib.dir/pthread.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj: /home/oliver/esp/esp-idf/components/newlib/random.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj -MF CMakeFiles/__idf_newlib.dir/random.c.obj.d -o CMakeFiles/__idf_newlib.dir/random.c.obj -c /home/oliver/esp/esp-idf/components/newlib/random.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/random.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/random.c > CMakeFiles/__idf_newlib.dir/random.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/random.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/random.c -o CMakeFiles/__idf_newlib.dir/random.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj: /home/oliver/esp/esp-idf/components/newlib/reent_init.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj -MF CMakeFiles/__idf_newlib.dir/reent_init.c.obj.d -o CMakeFiles/__idf_newlib.dir/reent_init.c.obj -c /home/oliver/esp/esp-idf/components/newlib/reent_init.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/reent_init.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/reent_init.c > CMakeFiles/__idf_newlib.dir/reent_init.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/reent_init.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/reent_init.c -o CMakeFiles/__idf_newlib.dir/reent_init.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj: /home/oliver/esp/esp-idf/components/newlib/newlib_init.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj -MF CMakeFiles/__idf_newlib.dir/newlib_init.c.obj.d -o CMakeFiles/__idf_newlib.dir/newlib_init.c.obj -c /home/oliver/esp/esp-idf/components/newlib/newlib_init.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/newlib_init.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/newlib_init.c > CMakeFiles/__idf_newlib.dir/newlib_init.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/newlib_init.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/newlib_init.c -o CMakeFiles/__idf_newlib.dir/newlib_init.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj: /home/oliver/esp/esp-idf/components/newlib/syscalls.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj -MF CMakeFiles/__idf_newlib.dir/syscalls.c.obj.d -o CMakeFiles/__idf_newlib.dir/syscalls.c.obj -c /home/oliver/esp/esp-idf/components/newlib/syscalls.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/syscalls.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/syscalls.c > CMakeFiles/__idf_newlib.dir/syscalls.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/syscalls.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/syscalls.c -o CMakeFiles/__idf_newlib.dir/syscalls.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj: /home/oliver/esp/esp-idf/components/newlib/termios.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj -MF CMakeFiles/__idf_newlib.dir/termios.c.obj.d -o CMakeFiles/__idf_newlib.dir/termios.c.obj -c /home/oliver/esp/esp-idf/components/newlib/termios.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/termios.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/termios.c > CMakeFiles/__idf_newlib.dir/termios.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/termios.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/termios.c -o CMakeFiles/__idf_newlib.dir/termios.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj: /home/oliver/esp/esp-idf/components/newlib/stdatomic.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj -MF CMakeFiles/__idf_newlib.dir/stdatomic.c.obj.d -o CMakeFiles/__idf_newlib.dir/stdatomic.c.obj -c /home/oliver/esp/esp-idf/components/newlib/stdatomic.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/stdatomic.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/stdatomic.c > CMakeFiles/__idf_newlib.dir/stdatomic.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/stdatomic.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/stdatomic.c -o CMakeFiles/__idf_newlib.dir/stdatomic.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj: /home/oliver/esp/esp-idf/components/newlib/time.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj -MF CMakeFiles/__idf_newlib.dir/time.c.obj.d -o CMakeFiles/__idf_newlib.dir/time.c.obj -c /home/oliver/esp/esp-idf/components/newlib/time.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/time.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/time.c > CMakeFiles/__idf_newlib.dir/time.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/time.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/time.c -o CMakeFiles/__idf_newlib.dir/time.c.s

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/flags.make
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj: /home/oliver/esp/esp-idf/components/newlib/port/esp_time_impl.c
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj -MF CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj.d -o CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj -c /home/oliver/esp/esp-idf/components/newlib/port/esp_time_impl.c

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.i"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/oliver/esp/esp-idf/components/newlib/port/esp_time_impl.c > CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.i

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.s"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && /home/oliver/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/oliver/esp/esp-idf/components/newlib/port/esp_time_impl.c -o CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.s

# Object files for target __idf_newlib
__idf_newlib_OBJECTS = \
"CMakeFiles/__idf_newlib.dir/abort.c.obj" \
"CMakeFiles/__idf_newlib.dir/heap.c.obj" \
"CMakeFiles/__idf_newlib.dir/locks.c.obj" \
"CMakeFiles/__idf_newlib.dir/poll.c.obj" \
"CMakeFiles/__idf_newlib.dir/pthread.c.obj" \
"CMakeFiles/__idf_newlib.dir/random.c.obj" \
"CMakeFiles/__idf_newlib.dir/reent_init.c.obj" \
"CMakeFiles/__idf_newlib.dir/newlib_init.c.obj" \
"CMakeFiles/__idf_newlib.dir/syscalls.c.obj" \
"CMakeFiles/__idf_newlib.dir/termios.c.obj" \
"CMakeFiles/__idf_newlib.dir/stdatomic.c.obj" \
"CMakeFiles/__idf_newlib.dir/time.c.obj" \
"CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj"

# External object files for target __idf_newlib
__idf_newlib_EXTERNAL_OBJECTS =

esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/abort.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/heap.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/locks.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/poll.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/pthread.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/random.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/reent_init.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/newlib_init.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/syscalls.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/termios.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/stdatomic.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/time.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/port/esp_time_impl.c.obj
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/build.make
esp-idf/newlib/libnewlib.a: esp-idf/newlib/CMakeFiles/__idf_newlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libnewlib.a"
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && $(CMAKE_COMMAND) -P CMakeFiles/__idf_newlib.dir/cmake_clean_target.cmake
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_newlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/newlib/CMakeFiles/__idf_newlib.dir/build: esp-idf/newlib/libnewlib.a
.PHONY : esp-idf/newlib/CMakeFiles/__idf_newlib.dir/build

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/clean:
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib && $(CMAKE_COMMAND) -P CMakeFiles/__idf_newlib.dir/cmake_clean.cmake
.PHONY : esp-idf/newlib/CMakeFiles/__idf_newlib.dir/clean

esp-idf/newlib/CMakeFiles/__idf_newlib.dir/depend:
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware /home/oliver/esp/esp-idf/components/newlib /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/esp-idf/newlib/CMakeFiles/__idf_newlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/newlib/CMakeFiles/__idf_newlib.dir/depend

