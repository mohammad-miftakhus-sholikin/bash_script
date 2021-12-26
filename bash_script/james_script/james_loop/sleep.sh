#!/bin/bash
#
#12/10/2020
#
echo "Script10_2020__Sleep"

echo "Sleeping seconds..."
x=1
while [ $x -le 5 ]
do
 date
 let x++
 sleep 1
done

echo "Sleeping minutes..."
x=1
while [ $x -le 2 ]
do
 date
 let x++
 sleep 1m
done

echo "Sleeping hours..."
x=1
while [ $x -le 2 ]
do
 date
 let x++
 sleep 1h
done

echo "End of Script10_2020__Sleep"
exit 0
