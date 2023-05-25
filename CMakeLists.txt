cmake_minimum_required(VERSION 3.10)
project(King-Under-Attack-Detector)

set(GTEST_DIR googletest-release-1.8.0)
include_directories(${GTEST_DIR}/include)

set(MAIN_SOURCE_FILES main.cpp ChessMath.cpp ChessMath.h)
add_executable(King-Under-Attack-Detector ${MAIN_SOURCE_FILES})

set(TEST_SOURCE_FILES tests/ChessMathTest.cpp ChessMath.cpp ChessMath.h)
add_executable(ChessMathTest ${TEST_SOURCE_FILES})

target_include_directories(King-Under-Attack-Detector PRIVATE
                           ${CMAKE_CURRENT_SOURCE_DIR}/King-Under-Attack-Detector/googletest-release-1.8.0/googletest/include)


target_link_libraries(ChessMathTest King-Under-Attack-Detector/googletest-release-1.8.0/googletest/include/gtest gtest_main)
