cmake_minimum_required(VERSION 2.8)

project(escalonamento)

add_library(Process process.h process.cpp)

add_executable(esc main.cpp)
target_link_libraries(esc Process)