#
# @file Makefile
# @author Hunter Johnson
# @date 2022-09-20
# @brief A makefile for employee class and children
# 
#compiles the neccesary files to make an executable for main
#



#Makes convienient variables for compiling and checking for errors and debugging I suppose
CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = Employee
all:$(TARGET)

default: $(TARGET)

$(TARGET): Employee.o Supervisor.o Officer.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Supervisor.o Officer.o main.o

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) $(TARGET) *.o *~

