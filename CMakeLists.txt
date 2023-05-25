cmake_minimum_required(VERSION 3.10)
project(King-Under-Attack-Detector)

set(GTEST_DIR /home/lakton/Desktop/King-Under-Attack-Detector/googletest-release)
include_directories(${GTEST_DIR}/include)

set(MAIN_SOURCE_FILES main.cpp ChessMath.cpp ChessMath.h)
add_executable(King-Under-Attack-Detector ${MAIN_SOURCE_FILES})

set(TEST_SOURCE_FILES tests/ChessMathTest.cpp ChessMath.cpp ChessMath.h)
add_executable(ChessMathTest ${TEST_SOURCE_FILES})

target_link_libraries(ChessMathTest gtest gtest_main)
