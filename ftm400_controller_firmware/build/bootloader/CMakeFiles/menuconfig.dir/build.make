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
CMAKE_SOURCE_DIR = /home/oliver/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader

# Utility rule file for menuconfig.

# Include any custom commands dependencies for this target.
include CMakeFiles/menuconfig.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/home/oliver/.espressif/python_env/idf4.4_py3.9_env/bin/python /home/oliver/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/config.env
	/home/oliver/.espressif/python_env/idf4.4_py3.9_env/bin/python /home/oliver/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/oliver/esp/esp-idf/Kconfig --sdkconfig-rename /home/oliver/esp/esp-idf/sdkconfig.rename --config /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/sdkconfig --env-file /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --dont-write-deprecated --output config /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/sdkconfig
	/home/oliver/.espressif/python_env/idf4.4_py3.9_env/bin/python /home/oliver/esp/esp-idf/tools/check_term.py
	/usr/bin/cmake -E env COMPONENT_KCONFIGS_SOURCE_FILE=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/kconfigs_projbuild.in IDF_CMAKE=y KCONFIG_CONFIG=/home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/sdkconfig IDF_TARGET=esp32 IDF_ENV_FPGA= /home/oliver/.espressif/python_env/idf4.4_py3.9_env/bin/python -m menuconfig /home/oliver/esp/esp-idf/Kconfig
	/home/oliver/.espressif/python_env/idf4.4_py3.9_env/bin/python /home/oliver/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/oliver/esp/esp-idf/Kconfig --sdkconfig-rename /home/oliver/esp/esp-idf/sdkconfig.rename --config /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/sdkconfig --env-file /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --output config /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make
.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig
.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oliver/esp/esp-idf/components/bootloader/subproject /home/oliver/esp/esp-idf/components/bootloader/subproject /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader /home/oliver/Projects/Ham_Radio_Projects/FTM400_Controller/ftm400_controller_firmware/build/bootloader/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

