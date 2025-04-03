cmake_minimum_required(VERSION 3.31.6)
project(gravitySim)

set(CMAKE_CXX_STANDARD 23)

find_package(OpenGL REQUIRED)

find_package(glfw3 REQUIRED)

add_library(glad STATIC src/glad.c)  
include_directories(include)        

add_executable(gravitySim src/gravity_sim.cpp)

target_link_libraries(gravitySim OpenGL::GL glfw glad)

