#!/bin/bash
#
#05/08/2020
#
echo "Script1_2020__While_loop"

x=1
while [ $x -le 10 ]
do
 echo x: $x
 let x+=1
done

echo "End of Script1_2020__While_loop"
exit 0
