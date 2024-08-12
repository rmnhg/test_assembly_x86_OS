# Assembly experiments

## Description
In this repo I have some assembly experiments I did following the [Daedalus Community's "Making an OS (x86)" course from Youtube](https://www.youtube.com/playlist?list=PLm3B56ql_akNcvH8vvJRYOc7TbYhRs19M).

Each ASM file is a different experiment.

## Requirements
We need to install [qemu](https://www.qemu.org/download/) and nasm.

## Building and running instructions
To build and run any of these files, we can run:
```console
nasm -f bin <filename>.asm -o boot.bin
qemu-system-x86_64 boot.bin
```
