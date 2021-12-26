#!/bin/bash
#
#05/08/2020
#
echo "Script4_2020__Screen_manipulation"

if [ $# -ne 1 ]; then
 echo "Usage: script4 string"
 echo "Will display the string on every line."
 exit 255
fi

tput clear # clear the screen

x=1
while [ $x -le $LINES ]
do
 echo "********* $1 *********"
 let x+=1
done

#echo "End of Script4_2020__Screen_manipulation"
exit 0

