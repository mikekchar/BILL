BIN_DIR=./bin
SRC_DIR=./src
RUSTC=rustc
EXECUTABLE=$(BIN_DIR)/bill
TEST_EXECUTABLE=$(BIN_DIR)/bill_tests

all: bill test

clean:
	rm -rf $(BIN_DIR)
	
setup: $(BIN_DIR)

bill: setup $(EXECUTABLE)

test: setup $(TEST_EXECUTABLE)
	$(TEST_EXECUTABLE)

$(BIN_DIR):
	mkdir $@

$(EXECUTABLE): $(SRC_DIR)/bill.rs
	$(RUSTC) $(SRC_DIR)/bill.rs -o $@

$(TEST_EXECUTABLE): $(SRC_DIR)/bill_tests.rs
	$(RUSTC) --test $(SRC_DIR)/bill_tests.rs -o $@
