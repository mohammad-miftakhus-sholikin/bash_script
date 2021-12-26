#!/bin/bash


#Title             : COnvert .dot to .png
#Creation date     : 7-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : Script to convert .dot file into .png extention

# nama file input dan output
read -p "Nama file input: " varname
dot -Tpng $varname.dot > $varname.png
