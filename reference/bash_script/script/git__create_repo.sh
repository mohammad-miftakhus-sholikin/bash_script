#!/bin/bash


#Title             : Create new git and connect to github
#Creation date     : 2-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use create new git and connect them to the github

# date
DATE=`date +"%Y-%m-%d %T"`

# github url
read -p "Isikan url git yang dituju: " github_url
git_url="https://github.com/mohammad-miftakhus-sholikin/$github_url"

# make others support file
dest="$PWD/"
cp -r ~/Templates/github/README.md ${dest}
cp -r ~/Templates/github/.gitignore ${dest}

# run git
echo "Membuat git dan koneksi ke github..."
git init 
git add -A 
git commit -m "$DATE" 
git remote add new $git_url
git push -u new master
