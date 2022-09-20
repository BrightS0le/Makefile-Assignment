/**
 * @file Makefile
 * @author Hunter Johnson
 * @date 2022-09-20
 * @brief a makefile to create an executable for the employee information stuff
 * 
 * Compiles all the files and puts them all into one nice convienient executable 
 */
//Conviently Creates variables for compiling that check for all the errors
CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = Employee
all:$(TARGET)


default: $(TARGET)
//Creates Target executable for code
$(TARGET):	 Employee.o Supervisor.o Officer.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Supervisor.o Officer.o main.o

Employee.o:	 Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Supervisor.o: 	 Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

Officer.o:	 Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

main.o: 	main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) $(TARGET) *.o *~

