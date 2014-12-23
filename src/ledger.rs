pub trait Printer {
    fn print(&self, message: &'static str);
}

pub struct ConsolePrinter;

impl Printer for ConsolePrinter {
    fn print(&self, message: &str) {
        println!("{}", message);
    }
}

pub fn print(printer: &Printer) {
    printer.print("beer name:");
}
