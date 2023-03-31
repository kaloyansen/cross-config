# CMake toolchain file for cross-building to AArch64 on x86_64 Linux
# usage: cmake --toolchain /path/to/this/file.cmake /path/to/source -L
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# cmake version
cmake_minimum_required(VERSION 3.5)
# message("cmake tool chain definition")

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
set(CMAKE_SYSROOT /usr/aarch64-linux-gnu)
set(CMAKE_INSTALL_PREFIX "/home/kalo/work/install/aarch64" CACHE PATH "installation directory")
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "build type")
#set(CMAKE_FIND_ROOT_PATH "${CMAKE_INSTALL_PREFIX}" CACHE PATH "where to look first for files")
# set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

#set(HAVE_POSIX_REGEX 0 CACHE BOOL "Enable POSIX regular expression support")
#set(HAVE_STEADY_CLOCK 0 CACHE BOOL "")
