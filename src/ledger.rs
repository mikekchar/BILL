pub trait Printer {
    fn print(&self, message: &str);
}

#[cfg(not(test))]
pub struct ConsolePrinter;

#[cfg(not(test))]
impl Printer for ConsolePrinter {
    fn print(&self, message: &str) {
        println!("{}", message);
    }
}

pub fn print(printer: &Printer) {
    printer.print("beer name:");
}

#[cfg(test)]
mod tests {
    struct MockPrinter<'a> {
        expect: &'a str,
    }

    impl<'a> MockPrinter<'a> {
        fn expecting(message: &'a str) -> MockPrinter<'a> {
            MockPrinter { expect: message }
        }
    }

    impl<'a> super::Printer for MockPrinter<'a> {
        fn print(&self, message: &str) {
            assert!(self.expect == message);
        }
    }

    #[test]
    fn it_prints_the_beer_name_prompt() {
        let printer = MockPrinter::expecting("beer name:");
        super::print(&printer);
    }
}
