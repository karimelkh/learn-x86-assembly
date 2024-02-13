# x86 assembly
a repo that contains my x86 assembly codebase, learning resources, references, and some tutorials.

## Resources

## Tools

the tools used for development:
	- nasm ||  GAS (as)
	- gnu linker (ld)

## Compiling process

there two steps to compile an assembly file to executable binary file:

1. compilation:

	- using *nasm*:

	```shell
	nasm -f -elf64 input.asm -o output.o
	```

	- using *GAS*:

	```shell
	as input.asm -o ouput.o
	```

2. linking: (using *ld*)

```shell
ld input.o -o output
```

3. running:

```shell
./output
```
