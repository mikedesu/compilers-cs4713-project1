CC = gcc
CFLAGS = -g -Wall
OFLAG = -c



all:  scan

scan:  scan.o main.o
	$(CC) scan.o main.o -o scan

main.o:  main.c
	$(CC) $(CFLAGS) $(OFLAG) main.c

scan.o:  scan.c
	$(CC) $(CFLAGS) $(OFLAG) scan.c

clean:  
	rm -rf *o scan
