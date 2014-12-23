mod ledger;

#[cfg(not(test))]
fn main() {
    let printer = ledger::ConsolePrinter;
    ledger::print(&printer);
}
