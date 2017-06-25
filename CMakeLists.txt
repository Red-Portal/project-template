
# MIT License

# Copyright (c) 2017 Red-Portal

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

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

