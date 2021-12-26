#!/bin/bash
#
# 05/08/2020
#
echo "Script7_2020__IP_machine"

array_var=(1 2 3 4 5 6)

echo ${array_var[0]}
echo ${array_var[1]}
echo ${array_var[2]}
echo ${array_var[3]}
echo ${array_var[4]}
echo ${array_var[5]}

echo "List all elements: "
echo ${array_var[*]}

echo "List all elements (alternative method): "
echo ${array_var[@]}

echo "Number of elements: ${#array_var[*]}"
lapip[0]="192.168.1.1"
lapip[1]="192.168.1.10"
lapip[2]="192.168.1.15"
lapip[3]="192.168.1.16"
lapip[4]="192.168.1.20"

echo ${lapip[0]}
echo ${lapip[1]}
echo ${lapip[2]}
echo ${lapip[3]}
echo ${lapip[4]}

echo "List all elements: "
echo ${lapip[*]}

echo "Number of elements: ${lapip[*]}"
echo "End of Script7_2020__IP_machine"
