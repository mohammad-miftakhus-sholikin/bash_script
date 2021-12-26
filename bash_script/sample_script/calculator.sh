#!/bin/bash


#Title             : Simple calculator
#Creation date     : 25-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : build basic calculator


# Take user input
echo "Enter two numbers: "
read a
read b

# Input type of operation
echo "Enter choice: "
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read choice

# Switch case to perform
# Calculator operations
case $choice in
1) res=`echo $a + $b | bc`
;;
2) res=`echo $a - $b | bc`
;;
3) res=`echo $a \* $b | bc`
;;
4) res=`echo "scale=2; $a / $b" | bc`
esac
echo "Result: $res"

