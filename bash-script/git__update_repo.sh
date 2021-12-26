#!/bin/bash


#Title             : Update git to github
#Creation date     : 2-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use update project to the github

# date
DATE=`date +"%Y-%m-%d %T"`

# run git
if [[ -n $(git status -s) ]]; then
    echo "Ditemukan perubahan, memulai pushing..."
    echo
    git add -A && git commit -m "$DATE" && git push
else
    echo "Tidak ada perubahan dan skip pushing."
    echo
fi
