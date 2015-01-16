# BILL (Brewing In-Line Ledger)

Note: The "In-Line" part is just there to fill out the acronym.
Suggestions for improvements (or probable meaning) are welcome.

BILL is a brewing ledger that will help you calculate or track
the values that you need for making beer.  It is inspired by
the command line financial ledger program, ledger:
http://ledger-cli.org/

At the moment, BILL is in development and may stay in development
forever if Mike is lazy.  But hopefully Mike won't be lazy.

BILL is written in Rust: http://www.rust-lang.org/

The only reason is because Rust looked cool and Mike wanted to
learn it.

## Concept

`bill` is really a filter for a brewing ledger.  To start you
simply run `bill`, passing it no input file.  It will respond
with a skeleton file for you to fill out.  You can fill out
as much information as you want and if you get stuck at any
point, you simply give the file back to `bill` to fill in more
details.

`bill` takes input files and calculates anything that it is able
to calculate and returns a copy of the input file with the
calculations made.  So for instance, you might write a list
of malts for the grain bill, along with percentages.  `bill`
will then calculate the current gravity of that malt bill.

`bill` will also make suggestions.  So if you have no malt,
`bill` will give you a list of malt that you could choose
from.  You keep modifying the files that `bill` gives you and
sending them back to `bill` until the document is as
complete as you want it.

## Building BILL

You will need to install the Rust compiler and Cargo (the Rust
package manager/build tool).

After that you can simply

```
cargo build
```

This will build the executable in `target/bill`.  To run the
executable, you can run it normally from the `target` directory
or type

```
cargo run
```

## Running the unit tests

You can just:

```
cargo test
```

To run the unit tests.

## Installation

You can not install because BILL does nothing yet.

