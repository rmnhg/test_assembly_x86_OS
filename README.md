# Assenbly experiments

## Description
In this repo I have some assembly experiments I did following the Daedalus Community's "Makeing an OS (x86)" cours from Youtube.

Each ASM file is a different experiment.

## Requirements
We need to install [qemu](https://www.qemu.org/download/) and nasm.

## Building and running instructions
To build and run any of these files, we can run:
```console
nasm -f bin <filename>.asm -o boot.bin
qemu-system-x86_64 boot.bin
```
