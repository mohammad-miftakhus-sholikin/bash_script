#!/bin/bash


#Title             : Create directory automatically
#Creation date     : 5-Agu-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : Using while loop to make directory

# User input
#a. input nama dan jumlah direktori/folder
read -p "Nama direktori/folder: " dir_name
read -p "Jumlah direktori/folder: " dir_number

x=1
while [ $x -le $dir_number ]
do
 echo x=$x
 mkdir $dir_name$x"_"
 let x+=1
done
exit 0
