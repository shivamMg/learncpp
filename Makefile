CXX := g++
CXXFLAGS = -std=c++17 -Wall -Weffc++ -Wextra -Wsign-conversion  # -Werror

SRC := ./src
BUILD := ./build
INC := -I ./include -I ./lib/plog/include
TARGET := ./bin/main

.PHONY: default  # https://stackoverflow.com/a/30176470
default: $(TARGET)

.PHONY: clean
clean:
	rm -rf $(BUILD)/* $(TARGET)

$(TARGET): $(BUILD)/add.o $(BUILD)/main.o
	$(CXX) $(CXXFLAGS) $(INC) -o $@ $^

$(BUILD)/main.o: $(SRC)/main.cpp
	$(CXX) $(CXXFLAGS) $(INC) -o $@ -c $^

$(BUILD)/add.o: $(SRC)/add.cpp
	$(CXX) $(CXXFLAGS) $(INC) -o $@ -c $^
