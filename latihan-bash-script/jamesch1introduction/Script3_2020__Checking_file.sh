#!/bin/bash


#Title             : Checking file
#Creation date     : 16-Jul-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : cheking file, if the file exists in the current directory


if [ $# -ne 1 ]; then
	echo "Useage: script3 file"
	echo "Will determine if the file exists."
	echo "Use it as fello: 'script file type in terminal'"
	exit 255
fi

if [ -f $1 ]; then
	echo File $1 exists.
	exit 0
else
	echo File $1 does not exists.
	exit 1
fi
