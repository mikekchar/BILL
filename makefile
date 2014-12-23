BIN_DIR=./bin
SRC_DIR=./src
TEST_DIR=./test
RUSTC=rustc
EXECUTABLE=$(BIN_DIR)/bill
TEST_EXECUTABLE=$(BIN_DIR)/bill_tests
SOURCES=$(SRC_DIR)/bill.rs
TEST_SOURCES=$(TEST_DIR)/bill_tests.rs

all: bill test

clean:
	rm -rf $(BIN_DIR)
	
setup: $(BIN_DIR)

bill: setup $(EXECUTABLE)

test: setup $(TEST_EXECUTABLE)
	$(TEST_EXECUTABLE)

$(BIN_DIR):
	mkdir $@

$(EXECUTABLE): $(SOURCES)
	$(RUSTC) $(SOURCES) -o $@

$(TEST_EXECUTABLE): $(TEST_SOURCES)
	$(RUSTC) --test $(TEST_SOURCES) -o $@
