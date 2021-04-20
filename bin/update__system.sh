#!/bin/bash


#Title             : Update git to github
#Creation date     : 24-Nov-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use update project to upgrade linux debian based and conda

# run
sudo apt update; sudo apt upgrade; sudo apt clean; sudo apt autoremove; conda update conda; conda update --all
