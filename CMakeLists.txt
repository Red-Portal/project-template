
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

set(SOURCE_DIR ${PROJECT_SOURCE_DIR}/src)
set(SOURCE_FILES ${SOURCE_DIR}/main.cpp)

if(MSVC)
    set(CMAKE_CXX_FLAGS "/WX- /Wall /O2 /Ob2")
else()
    set(CMAKE_CXX_FLAGS "-Wall -Wextra -O3 -pthread")
endif()

include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# compile options
target_compile_features(${PROJECT_NAME}
    PRIVATE
    cxx_lambdas)

# install
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin)

