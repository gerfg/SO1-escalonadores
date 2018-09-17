cmake_minimum_required(VERSION 2.8)

project(escalonamento)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(Process process.h process.cpp)
add_library(FCFS fcfs.h fcfs.cpp)

add_executable(esc main.cpp)

target_link_libraries(esc Process FCFS)