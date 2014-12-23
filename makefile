BIN_DIR=./bin
SRC_DIR=./src
RUSTC=rustc
EXECUTABLE=$(BIN_DIR)/bill
TEST_EXECUTABLE=$(BIN_DIR)/bill_tests

all: $(BIN_DIR) $(EXECUTABLE) test

clean:
	rm -rf $(BIN_DIR)
	
$(BIN_DIR):
	mkdir $@

$(EXECUTABLE): $(SRC_DIR)/bill.rs
	$(RUSTC) $(SRC_DIR)/bill.rs -o $@

test: $(TEST_EXECUTABLE)
	$(TEST_EXECUTABLE)

$(TEST_EXECUTABLE): $(SRC_DIR)/bill_tests.rs
	$(RUSTC) --test $(SRC_DIR)/bill_tests.rs -o $@
