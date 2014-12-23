mod ledger;

fn main() {
    let printer = ledger::ConsolePrinter;
    ledger::print(&printer);
}
