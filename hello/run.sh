#!/bin/bash

mkdir -p build
nasm -f elf64 -o build/main.o main.asm
ld -o build/main build/main.o
echo "Build complete!"
echo "Running ..."
./build/main
