#!/usr/bin/python



#Script : print_fuction
#Author : Mohammad Miftkahus Sholikin
#Desc.	: how to use print() build in fucntion
#Date	: 15-Jul-2020



# 1. Calling print()

# print function
print("contoh") # example

# print blank line
print("\n") # blank line

# print empty line
print("") # empty line

# line print
#"A line of text. \n"rstrip()

# print massage
print("\nPlease wait while the program is loading...")

# print massage from variable
massage = "Please wait while the program is loading..."
print(massage)

# using concatenation print
import os
print("Hello, " + os.getlogin() + "! How are you?")
print(f"Hello, {os.getlogin()}! How are you?")

# other print command
print("My age is " + str(42))
print(42) # int
type(42)
print(3.14) # float
type(3.14)
print(1 + 2j) # complex
type(1 + 2j)
print(True) # bool
type(True)
print([1, 2, 3]) # list
type([1, 2, 3])
print((1, 2, 3)) # tuple
type((1, 2, 3))
print({"red", "green", "blue"}) # set
type({"red", "green", "blue"})
print({"name":"Alice", "age":42}) # dictionary
type({"name":"Alice", "age":42})
print("Hello") # str
type("Hello")

# using separator
print("hello", "world", sep=None)
print("hello", "world", sep=" ")
print("hello", "world")
print("hello", "world", sep="\n")
print("/home", "user", "documents", sep="/")
print("home", "user", "documents", sep="/")
print("", "home", "user", "documents", sep="/")
print(*["jdoe is", 42, "years old"])
print(1, "Python Tricks", "Dan Bander", sep=",")
print("node", "child", "child", sep=" -> ")
print("line1\nline2\nline3")
print("line1\r\nline2\r\nline3")
print("Checking file integrity...", end="")
print("ok")
print("The first sentence", end=". ")
print("The second sentence", end=". ")
print("The last sentence.")
print("Mercury", "Venus", "Earth", sep=", ", end=", ")
print("Mars", "Jupiter", "Saturn", sep=", ", end=", ")
print("Uranus", "Neptune", "Pluto", sep=", ")
print("Printing in a Nutshell", end="\n * ")
print("Calling Print", end="\n * ")
print("Separating multiple Arguments", end="\n * ")
print("Preventing Line Breaks")

