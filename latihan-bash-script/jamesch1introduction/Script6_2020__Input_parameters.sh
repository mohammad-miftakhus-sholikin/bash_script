#!/bin/bash


#Title             : Input parameters
#Creation date     : 17-Jul-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : input paramters


if [ $# -ne 3 ]; then
	echo "Usage: script6 parm1 parm2 parm3"
	echo "Pelase enter 3 parameters."
	exit 225
fi

echo Parameter 1: $1
echo Parameter 2: $2
echo Parameter 3: $3

exit 0
