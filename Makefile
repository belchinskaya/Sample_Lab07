targets = main.bin 
CC = gcc
C_OPTS = -std=gnu11 -g -Wall -Wextra -Wformat-security -Wfloat-equal -Wshadow -Wconversion -Wlogical-not-parentheses -Wnull-dereference

all: clean prep compile run

clean:
	rm -rf dist
prep:
	mkdir dist
compile: main.bin

task01.bin: src/main.c
	$(CC) $(C_OPTS) $< -o ./dist/$@
run1: clean prep compile
	./dist/main.bin
doxygen:
	doxygen Doxyfile
format: #TODO

tidy: # TODO

