#!/bin/bash
#
#05/08/2020
#
echo "Script6_2020__While_loop"

echo "This shows the while loop"

x=1
while [ $x -lt 11 ] # perform the loop while the condition
do
 echo "x: $x"
 let x+=1
done

echo "This shows the until loop"

x=1
until [ $x -gt 10 ] # perform the loop until the condititon
do
 echo "x: $x"
 let x+=1
done

echo "End of Script6_2020__While_loop"
exit 0

