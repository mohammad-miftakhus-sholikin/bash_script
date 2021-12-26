#!/bin/bash


#Title             : Prime numbers checker
#Creation date     : 25-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : check prime number


# Storing the number to be checked
number=43
i=2

# flag variable
f=0

# running a loop from 2 to number/2
while test $i -le `expr $number / 2`
do

# checking if i is factor of number
if test `expr $number % $i` -eq 0
then
f=1
fi

# increament the loop variable
i=`expr $i + 1`
done
if test $f -eq 1
then
echo "Not Prime"
else "Prime"
fi
