BIN_DIR=./bin
SRC_DIR=./src

all: setup bill test

setup: $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR)
	
$(BIN_DIR):
	mkdir $(BIN_DIR)

bill: $(SRC_DIR)/bill.rs
	rustc $(SRC_DIR)/bill.rs -o $(BIN_DIR)/bill

test: bill_tests
	$(BIN_DIR)/bill_tests

bill_tests: $(SRC_DIR)/bill_tests.rs
	rustc --test $(SRC_DIR)/bill_tests.rs -o $(BIN_DIR)/bill_tests
