CXX := g++
SRC := $(wildcard src/*.cpp)
TESTS := $(wildcard test/*.cpp)
INCL_DIR := include/

TARGET_NAME := cppdev.exe
TARGET_NAME_TEST := cppdev_test.exe

$(TARGET_NAME):
	@mkdir build
	@$(CXX) $(SRC) -I$(INCL_DIR) -o build/cppdev.exe

$(TARGET_NAME_TEST):
	@mkdir build/test
	@$(CXX) $(TESTS) -o build/test/cppdev_test.exe 

clean:
	@rm -r -f build && rm -rf build/test
	
