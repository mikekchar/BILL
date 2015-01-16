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

## TODO

I will try to track stories in this README.  Hopefully it will give you
an idea of what BILL is supposed to do and roughly what order it will get
the functionality.

Remember: BILL is a filter that calculates brewing information from an input file,
          prints it to an output file along with prompts for how the user can further
          complete the input.  The file is a ledger that describes a recipe, plan
          and ultimately results of the plan.

*** Stories that are done
**** DONE BILL outputs a field for the name of the beer
    :PROPERTIES:
    :Effort: 2
    :Done: 2
    :END
**** DONE Use Cargo to build instead of make
    :PROPERTIES:
    :Effort: 1
    :Done: 1
    :END

*** Stories in the backlog
**** TODO BILL Reads its output and echos it
**** TODO BILL writes an error to STDERR if there is input it doesn't recognise
**** TODO BILL Reads its output with details filled in and echos it with the details intact
**** TODO BILL outputs a field for the style
**** TODO BILL allows input of a style db entry and leaves it unchanged
**** TODO If the style matches a style db entry value, BILL outputs guideline values for the recipe
**** TODO Bill allows input of a comment and leaves it unchanged
**** TODO If there is no style listed, BILL adds a list of styles from the style DB in comments
**** TODO If there is a style and there are style comments in the file, BILL removes the style comments
**** TODO BILL allows the style db to be loaded from a second file using a command line parameter
