RUSTC = rustc --edition=2021
#RUSTFLAGS = -g
RUSTFLAGS = -O -C codegen-units=1 -C lto=true

client: liblibcrate.rlib client.rs
	$(RUSTC) $(RUSTFLAGS) --extern=libcrate=liblibcrate.rlib \
	-o client client.rs

liblibcrate.rlib: libcrate.rs
	$(RUSTC) $(RUSTFLAGS) --crate-type=lib libcrate.rs

clean:
	-rm -rf liblibcrate.rlib client
