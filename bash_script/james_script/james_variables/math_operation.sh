#!/bin/bash
#
# 28/07/2020
#
echo "Script5_2020__Math_operation"

num1=1
num2=2
num3=3
num4=4
sum=0

echo num1=$num1
echo num2=$num2

let sum=num1+num2
echo "The sum is: $sum"

let num2--
echo "num2 is now: $num2"

let num3=5
echo num3=$num3

let num3=num3+10
echo "num3 is now: $num3"

let num3+=10
echo "num3 is now: $num3"

let num4=50
echo "num4=$num4"

let num4-=10
echo "num4 is now: $num4"

echo "End of Script5_2020__Math_operation"
