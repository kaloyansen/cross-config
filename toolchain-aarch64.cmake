# CMake toolchain file for cross-building to AArch64 on x86_64 Linux
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# cmake version
cmake_minimum_required(VERSION 3.5)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# tool chain definition
# message("loading aarch64 toolchain")
# the next line is extremely stupid, but i leave it for fun
# set(CMAKE_TOOLCHAIN_FILE /home/kalo/work/config/toolchain-aarch64.cmake)
# this is the toolchain file - define it as an option to cmake instead with
# --toolchain /home/kalo/work/config/toolchain-aarch64.cmake
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


# system and architecture-specific variables
set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(CMAKE_C_COMPILER /usr/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER /usr/bin/aarch64-linux-gnu-g++)
set(CMAKE_LINKER /usr/bin/aarch64-linux-gnu-ld)
set(PKG_CONFIG_EXECUTABLE /usr/aarch64-linux-gnu/bin/pkg-config)
# set(CMAKE_C_FLAGS "--sysroot=/usr/aarch64-unknown-linux-gnu/sys-root -march=armv8-a")
# set(CMAKE_CXX_FLAGS "--sysroot=/usr/aarch64-unknown-linux-gnu/sys-root -march=armv8-a")
# set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
# set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
# set(CMAKE_EXE_LINKER_FLAGS "--sysroot=/usr/aarch64-unknown-linux-gnu/sys-root")
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


# executables, libraries and headers
set(CMAKE_INSTALL_PREFIX "/home/kalo/work/install/aarch64" CACHE PATH "installation directory")
set(CMAKE_FIND_ROOT_PATH "${CMAKE_INSTALL_PREFIX}" CACHE PATH "path to look for dependencies")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "build type")
# set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


