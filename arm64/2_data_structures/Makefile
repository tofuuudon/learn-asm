SOURCES = $(wildcard *.s)
OBJECTS = $(SOURCES:.s=.o)
OUTPUT = main

all: $(OUTPUT)

$(OUTPUT): $(OBJECTS)
	ld -o $(OUTPUT) $(OBJECTS) -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

%.o: %.s
	as -g -arch arm64 -o $@ $<

clean:
	rm -f $(OBJECTS) $(OUTPUT)

list:
	@echo "Sources: $(SOURCES)"
	@echo "Objects: $(OBJECTS)"
