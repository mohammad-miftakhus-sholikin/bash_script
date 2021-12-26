#!/bin/bash


#Title             : Checking existing file
#Creation date     : 18-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use to check existing file in directory

filename=$1
if [ -f "$filename" ]; then
	echo "File exists"
else
	echo "File does not exist"
fi
