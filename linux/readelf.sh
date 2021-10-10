

# read elf header
readelf -h test.o

# read elf section info
readelf -S test.o

# symbol table
readelf -s test.o
readelf --syms test.o

# Displays the contents of the file's relocation section, if it has one.
readelf -r test.o


