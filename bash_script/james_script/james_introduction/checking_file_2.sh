#!/bin/bash


#Title             : Checking file
#Creation date     : 17-Jul-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : cheking file, if the file exists in the current directory


if [ $# -ne 1 ]; then
	echo "Useage: script3 file"
	echo "Will determine if the file exists."
	echo "Use it as fello: 'script file type in terminal'"
	exit 255
fi

echo -n "$1"
if [ ! -e $1 ]; then
	echo does not exist.
	exit 1
fi

if [ -f $1 ]; then
	echo is a file.
elif [ -d $1 ]; then
	echo is a directory.
fi

if [ -x $1 ]; then
	echo Is executable.
fi

if [ -r $1 ]; then
	echo Is readable.
else
	echo Is not readable.
fi

if [ -w $1 ]; then
	echo Is writeable.
fi

if [ -s $1 ]; then
	echo Is not empty.
else
	echo Is empty.
fi

exit 0
