cmake_minimum_required(VERSION 3.10.2:)
project(CPPDEV)
option(BUILD_TEST "Turn on build for tests of CPPDEV" OFF) 
file(GLOB SRC_FILES
	"src/*.cpp"
)
set(INC_FILES_DIR
	include/
)	  
if (BUILD_TESTS)
	add_subdirectory(test)
endif()
include_directories(
	${INC_FILES_DIR}
)
add_executable(cppdev.exe
	${SRC_FILES}
)
