run-tests: tests
	./tests

debug: tests
	echo -e "start\n break upcall_fail\n continue\n where\n continue" | gdb -q ./tests

tests: cssparser.rc cssparser.rs tokenizer.rs
	rustc --test $< -o $@

.PHONY: run-tests debug
