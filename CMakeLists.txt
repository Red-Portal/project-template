cmake_minimum_required(VERSION 3.8)
project(template_project)

set(CMAKE_CXX_STANDARD 17)

if(MSVC)
  set(CMAKE_CXX_FLAGS "/WX- /Wall /O2 /Ob2")
else()
  set(CMAKE_CXX_FLAGS "-pthread -Wall -O3")
endif()

include_directories(${PROJECT_SOURCE_DIR}/include)

set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)

add_executables(template_project ${SOURCE_DIR})

install(TARGETS template_project
    RUNTIME DESTINATION bin)

