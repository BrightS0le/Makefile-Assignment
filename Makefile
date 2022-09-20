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
#Sets default to whatever Target is
default: $(TARGET)
#Defines target and what objects it needs in order to compile 
$(TARGET): Employee.o Supervisor.o Officer.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Supervisor.o Officer.o main.o
#takes Employee.cpp and Employee.h and makes the Employee object file
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp
#takes Supervisor.cpp and Supervisor.h and makes the Supervisor object file 
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp
#take Officer.cpp and Officer.h and makes the Officer object file
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp
#takes main.cpp and all the header files neccessary and makes the main object file 
main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp
#cleans up unneccesary garb and object files and exectuables for submission
clean:
	$(RM) $(TARGET) *.o *~

