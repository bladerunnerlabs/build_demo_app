cmake_minimum_required(VERSION 3.12)
project(demo_app LANGUAGES C CXX)

if (NOT BUILD_ROOT_DIR)
    set(BUILD_ROOT_DIR ${PROJECT_SOURCE_DIR}/..)
endif()

if (NOT BUILD_RUNNER_DIR)
    set(BUILD_RUNNER_DIR build-runner)
endif()

# include CMake utils
set(INC_CMAKE_DIR ${BUILD_ROOT_DIR}/${BUILD_RUNNER_DIR}/cmake/include)
include(${INC_CMAKE_DIR}/messages.cmake)
include(${INC_CMAKE_DIR}/packages.cmake)
include(${INC_CMAKE_DIR}/targets.cmake)
include(${INC_CMAKE_DIR}/options.cmake)
include(${INC_CMAKE_DIR}/compiler.cmake)
include(${INC_CMAKE_DIR}/linker.cmake)

# Set up the current package
define_package(demo_app
#    FILES tarpack-install.yaml
)

# Find other packages
use_package(demo_infra REQUIRED)

# Add the sub-tree
add_subdirectory(myapp)

