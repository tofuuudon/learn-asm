main:
	mkdir -p build
	as -arch arm64 -o build/main.o main.s -g
	ld -o build/main build/main.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
