RUSTC = rustc
RUSTFLAGS = --edition=2018

client: liblibcrate.rlib client.rs
	$(RUSTC) $(RUSTFLAGS) --extern=libcrate=liblibcrate.rlib \
	-o client client.rs

liblibcrate.rlib: libcrate.rs
	$(RUSTC) $(RUSTFLAGS) --crate-type=lib libcrate.rs

clean:
	-rm -rf liblibcrate.rlib client
