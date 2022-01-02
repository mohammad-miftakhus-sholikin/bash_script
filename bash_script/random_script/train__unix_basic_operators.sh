#!/bin/bash

# Author : Mohammad Miftakhus Sholikin
# Copyright (c) mohammad-miftakhus-sholikin github
# Script follows here:


## Input Numbers
a=10
b=20 


## Arithmetic Operators
#operators
var_add=`expr $a + $b`
var_sub=`expr $a - $b`
var_mult=`expr $a \* $b`
var_div=`expr $a / $b`
var_mod=`expr $a % $b`
var_assg=`expr [$a = $b]`
var_eqty=`expr [$a == $b]`
var_not_eqty=`expr [$a != $b]`
#result
echo ""
echo "Total addition value of a + b = $var_add"
echo "Total subtraction value of a - b = $var_sub"
echo "Total multiplication value of a * b = $var_mult"
echo "Total division value of a / b = $var_div"
echo "Total modulus value of a % b = $var_mod"
echo "Total assignment value of [a = b] = $var_assg"
echo "Total equality value of [a == b] = $var_eqty"
echo "Total not equality value of [a != b] = $var_not_eqty"


echo ""
## Boolean Operators
#boolean_1: "NOT EQUAL"
if [ $a != $b ]
then
    echo "$a != $b : a is not equal to b"
else
    echo "$a != $b : a is equal to b"
fi
#boolean_2: "AND"
if [ $a -lt 100 -a $b -gt 15 ]
then
    echo "$a -lt 100 -a $b -gt 15 : return true"
else
    echo "$a -lt 100 -a $b -gt 15 : return false"
fi
#boolean_3: "OR"
if [ $a -lt 100 -o $b -gt 15 ]
then
    echo "$a -lt 100 -o $b -gt 15 : return true"
else
    echo "$a -lt 100 -o $b -gt 15 : return false"
fi
#boolean_4: "OR"
if [ $a -lt 5 -o $b -gt 100 ]
then
    echo "$a -lt 5 -o $b -gt 100 : return true"
else
    echo "$a -lt 5 -o $b -gt 100 : return false"
fi


echo ""
## String Operators
#input_variables
a="abc"
b="efg"
#boolean_1
if [ $a = $b ]
then
    echo "$a = $b : a is equal to b"
else
    echo "$a = $b : a is not equal to b"
fi
#boolean_2
if [ $a != $b ]
then
    echo "$a != $b : a is not equal to b"
else
    echo "$a != $b : a is equal to b"
fi
#boolean_3
if [ -z $a ]
then
    echo "-z $a : a string length is zero"
else
    echo "-z $a : a string length is not zero"
fi
#boolean_4
if [ -n $a ]
then
    echo "-n $a : a string length is not zero"
else
    echo "-n $a : a string length is zero"
fi
#boolean_5
if [ $a ]
then
    echo "$a : string is not empty"
else
    echo "$a : string is empty"
fi


echo ""
## File Test Operators
#input_variables
file=
