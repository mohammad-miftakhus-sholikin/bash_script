#!/bin/bash
#
#05/08/2020
#
echo "Script7_2020__For_loop"

for i in jkl.c bob Linux "Hello there" 1 2 3
do
 echo -n "$i "
done

for i in Script*
do
 echo $i
done

echo "End of Script7_2020__For_loop"
exit 0

