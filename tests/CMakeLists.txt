cmake_minimum_required(VERSION 3.24.1)

set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")
# These tests can use the Catch2-provided main
#add_executable(test test_catch.cpp )
add_executable(test test_doctest.cpp doctest.h)

#add_subdirectory(catch2)

target_include_directories(test PRIVATE ../app)
target_include_directories(test PRIVATE ../src)
#target_include_directories(test PRIVATE ../catch2)

#target_link_libraries(test PRIVATE Catch2::Catch2WithMain)
target_link_libraries(test PRIVATE app main)

#include(CTest)
#include(Catch)
#catch_discover_tests(test)