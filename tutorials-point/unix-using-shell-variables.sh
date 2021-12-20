#!/bin/bash

# Author : Mohammad Miftakhus Sholikin
# Copyright (c) mohammad-miftakhus-sholikin github
# Script follows here:


## Defining Variables
variable_name=variable_value
# example
NAME="Sholikin"
VAR1="Sholikin"
VAR2=100

## Accessing Values
NAME="Sholikin"
echo $NAME

## Read-only Variables
NAME="Sholikin"
readonly NAME
NAME="Ahmad"

## Unsetting Variables
unset variable_name
NAME="Sholikin"
unset NAME
echo $NAME

## Variable Types
#1. Local Variables
#2. Environment Variables
#3. Shell Variables
