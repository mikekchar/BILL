SHELL=/bin/sh
BIN_DIR=./bin
SRC_DIR=./src
TEST_DIR=./test
RUSTC=rustc
RUSTCFLAGS=
EXECUTABLE=$(BIN_DIR)/bill
TEST_EXECUTABLE=$(BIN_DIR)/bill_tests
SOURCES=$(SRC_DIR)/bill.rs $(SRC_DIR)/ledger.rs
TEST_SOURCES=$(TEST_DIR)/bill_tests.rs

all: bill check

clean:
	rm -rf $(BIN_DIR)
	
setup: $(BIN_DIR)

bill: setup $(EXECUTABLE)

check: setup $(TEST_EXECUTABLE)
	$(TEST_EXECUTABLE)

$(BIN_DIR):
	mkdir $@

$(EXECUTABLE): $(SOURCES)
	$(RUSTC) $(RUSTCFLAGS) $(SRC_DIR)/bill.rs -o $@

$(TEST_EXECUTABLE): $(TEST_SOURCES)
	$(RUSTC) $(RUSTCFLAGS) --test $(TEST_SOURCES) -o $@
