#!/bin/bash
#
#05/08/2020
#
echo "Script3_2020__While_loop"

x=1
while [ $x -le 10 ]
do
 echo x=$x
 mkdir chapter$x
 let x++
done

echo "End of Script3_2020__While_loop"
exit 0
