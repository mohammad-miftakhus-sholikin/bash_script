#!/bin/bash
#
#05/08/2020
#
echo "Script2_2020__While_loop"

x=1
while [ $x -ge 0 ]
do
 echo x: $x
 let x+=1
done

echo "End of Script2_2020__While_loop"
exit 0
