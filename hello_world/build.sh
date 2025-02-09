#!/bin/bash

mkdir -p build
arch -x86_64 nasm -f elf64 -o build/main.o main.asm
ld -o build/main build/main.o
echo "Build complete!"
