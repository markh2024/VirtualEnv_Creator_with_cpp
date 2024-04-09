cmake_minimum_required(VERSION 3.0)
project(VirtualEnv VERSION 1.0)  # Set project name and version

# Add the source files
file(GLOB SRC_FILES "src/*.cpp")

# Add the header files
include_directories(header_files)

# Set the build directory
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# Add the executable target
add_executable(${PROJECT_NAME} ${SRC_FILES})

# Link any necessary libraries
# target_link_libraries(main ...)

# Set C++ standard
# Set C++ standard to 17

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
