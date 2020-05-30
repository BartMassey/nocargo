# nocargo: compiling Rust without Cargo
Bart Massey

This is a trivial example of building both a library crate
and its dependent binary with just a `Makefile`, without
getting Cargo involved. The corresponding `Cargo.toml` is
also included for comparison purposes.

There's a lot of necessary complexity missing here for doing
anything real: it's just a demo of an extremely simple case
to show that there's not much necessary magic.

Say `make` to build everything, and `./client` to see that
it works. Say `make clean` to clean up afterward.
