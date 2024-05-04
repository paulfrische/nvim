CFLAGS := -Wall -Wextra -Wswitch-enum -Werror -pedantic -std=c11
LIBS := 
CC := clang
CS := $(shell find src -name '*.c')
EXE := out

all: $(CS)
	mkdir -p build
	$(CC) $(CFLAGS) $(LIBS) $(CS) -o build/$(EXE)

.PHONY: clean
clean:
	rm -rdf build
