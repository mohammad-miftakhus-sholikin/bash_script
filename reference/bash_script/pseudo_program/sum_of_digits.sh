#!/bin/bash


#Title             : Sum of digits
#Creation date     : 25-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : sum of two input numbers

# Program to find sum
# of digits

# static input of the
# number
read -p "Masukkan angka: " Num 
g=$Num

# store the sum of
# digits
s=0

# use while loop to
# calculate the sum
# of all digits
while [ $Num -gt 0 ]
do
 # get Remainder
 k=$(( $Num % 10 ))

 # get next digits
 Num=$(( $Num / 10 ))
	
 # calculate sum of
 # digit
 s=$(( $s + $k ))
done

echo "sum of digits of $g is : $s"
