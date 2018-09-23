cmake_minimum_required(VERSION 2.8)

project(escalonamento)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(Process process.h process.cpp)
add_library(FCFS fcfs.h fcfs.cpp)
add_library(SJF sjf.h sjf.cpp)
add_library(RR rr.h rr.cpp)
add_library(util util.h util.cpp)

add_executable(escalonadores main.cpp)

target_link_libraries(escalonadores Process FCFS SJF RR util)