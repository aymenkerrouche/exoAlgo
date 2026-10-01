demo.exe: main.o liste.o
	$(CC) -Wall -Wextra -std=c11 -g -o demo.exe main.o liste.o

main.o: main.c liste.h
	$(CC) -Wall -Wextra -std=c11 -g -c main.c

liste.o: liste.c liste.h
	$(CC) -Wall -Wextra -std=c11 -g -c liste.c

clean:
	rm -f main.o liste.o demo.exe

.PHONY: clean
