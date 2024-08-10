cmake_minimum_required(VERSION 3.30)
project(HELLO_CROSS_COMPILATION)

set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
set(BUILD_SHARED_LIBS OFF)
set(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")


add_executable(hello src/main.cpp)
target_link_libraries(hello -static)

set(CMAKE_SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/src)
message("CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}")
set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_BINARY_DIR})

install(TARGETS hello DESTINATION dist)


