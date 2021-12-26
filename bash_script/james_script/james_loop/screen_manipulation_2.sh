#!/bin/bash
#
#05/08/2020
#
#echo "Script5_2020__Screen_manipulation"

tput clear # clear the screen

row=1
while [ $row -le $LINES ]
do
 col=1
 while [ $col -le $COLUMNS ]
 do
  echo -n "#"
  let col+=1
 done
 echo "" # oupt a carriage return
 let row+=1
done

#echo "End of Script5_2020__Screen_manipulation"
exit 0

