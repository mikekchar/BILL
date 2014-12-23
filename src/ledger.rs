trait Printer {
    fn print(&self, message: &'static str);
}

struct ConsolePrinter;

impl Printer for ConsolePrinter {
    fn print(&self, message: &str) {
        println!("{}", message);
    }
}

pub fn print() {
    let printer = ConsolePrinter;

    printer.print("beer name:");
}
