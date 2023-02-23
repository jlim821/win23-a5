CC = cc

# The final executable
calculator: main.o addition.o subtraction.o multiplication.o division.o
	$(CC) -o calculator main.o addition.o subtraction.o multiplication.o division.o

# The main program file
main.o: main.c operations.h
	$(CC) -c main.c

# The arithmetic operation files
addition.o: addition.c operations.h
	$(CC) -c addition.c

subtraction.o: subtraction.c operations.h
	$(CC) -c subtraction.c

multiplication.o: multiplication.c operations.h
	$(CC) -c multiplication.c

division.o: division.c operations.h
	$(CC) -c division.c

clean:
	rm -f *.o
