pub trait Printer {
    fn print(&self, message: &'static str);
}

#[cfg(not(test))]
pub struct ConsolePrinter;

#[cfg(not(test))]
impl Printer for ConsolePrinter {
    fn print(&self, message: &'static str) {
        println!("{}", message);
    }
}

pub fn print(printer: &Printer) {
    printer.print("beer name:");
}

#[cfg(test)]
mod tests {
    struct FakePrinter<'a> {
        expect: &'a str,
    }

    impl<'a> FakePrinter<'a> {
        fn expect(message: &'a str) -> FakePrinter<'a> {
            FakePrinter { expect: message }
        }
    }

    impl<'a> super::Printer for FakePrinter<'a> {
        fn print(&self, message: &'static str) {
            assert!(self.expect == message);
        }
    }

    #[test]
    fn it_prints_the_beer_name_prompt() {
        let printer = FakePrinter::expect("beer name:");
        super::print(&printer);
    }
}
