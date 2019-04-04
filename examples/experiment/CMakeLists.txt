project(usd-experiment)
cmake_minimum_required(VERSION 2.8.11)

set(USD_DIST_DIR "" CACHE STRING "Path to built USD distribution")

set(usd-experiment-Source
  ${CMAKE_CURRENT_SOURCE_DIR}/main.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/simple.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/complex.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/tokens.cpp
  )

set(CMAKE_CXX_STANDARD 11)

# TODO(LTE): Use target_include_directories and target_link_directories
include_directories(usd-experiment ${USD_DIST_DIR}/include)
link_directories(usd-experiment ${USD_DIST_DIR}/lib)

list(APPEND LIBRARY_NAME usd sdf tf)

add_executable(usd-experiment ${usd-experiment-Source})
target_link_libraries(usd-experiment ${LIBRARY_NAME})
