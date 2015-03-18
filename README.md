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

`BILL` is really a filter for a brewing ledger.  To start you
simply run `bill`, passing it no input file.  It will respond
with a skeleton file for you to fill out.  You can fill out
as much information as you want and if you get stuck at any
point, you simply give the file back to `BILL` to fill in more
details.

`BILL` takes input files and calculates anything that it is able
to calculate and returns a copy of the input file with the
calculations made.  So for instance, you might write a list
of malts for the grain BILL, along with percentages.  `BILL`
will then calculate the current gravity of that malt BILL.

`BILL` will also make suggestions.  So if you have no malt,
`BILL` will give you a list of malt that you could choose
from.  You keep modifying the files that `BILL` gives you and
sending them back to `BILL` until the document is as
complete as you want it.

## TODO

I'm going to experiment with a different form of TODO planning.
Since `BILL` only transforms files, things TODO are most
easily shown by describing a starting file and the desired
transition.  All implemented and unimplemented features are
described in the `scenario` directory.  Implemented features
are in `scenario/implemented` while unimplemented features
are in `scenario/unimplemented`.

If you wish to work on `BILL` all you have to do is pick a
transformation that is not implemented and implement it.
Then move the 2 files (the user input and the response
that BILL generated) into the `implemented` directory.

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

### Vim plugin

There is a minimal syntax highlighting file in the `vim-bill` directory.  This
can be installed in your `bundle` directory using `pathogen`.

`BILL` does nothing yet, so there is no point in installing anywhere.

