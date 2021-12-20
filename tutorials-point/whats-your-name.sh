#!/bin/bash

# Author : Mohammad Miftakhus Sholikin
# Copyright (c) mohammad-miftakhus-sholikin github
# Script follows here:


## Text condition
var_bold="\e[1m"
var_unbold="\e[0m"
var_red="\e[31m"
var_green="\e[32m"
var_endcolor="\e[0m"

## Input from user
read -p "What is your name? " var_name
var_name=${var_bold}${var_name^}
read -p "Where are u come from? " var_from
var_from=${var_bold}${var_from^}

## Greeting
var_hour=`date +%H`
if [ $var_hour -lt 12 ]; then 
    echo -e "${var_red}Hello, good morning, $var_name ${var_unbold}${var_red}from $var_from${var_endcolor}"
elif [ $var_hour -lt 18 ]; then
    echo -e "${var_red}Hello, good afternoon, $var_name ${var_unbold}${var_red}from $var_from${var_endcolor}"
else
    echo -e "${var_red}Hello, good evening, $var_name ${var_unbold}${var_red}from $var_from${var_endcolor}"
fi
