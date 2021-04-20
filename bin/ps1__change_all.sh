#!/bin/bash


#Title             : Change PS1 variable
#Creation date     : 3-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use to change PS1 seeting

echo
echo
echo ""World without knowing!""
echo
echo

echo
echo
echo ███╗░░██╗██╗██╗░░██╗██╗██╗░░░░░░█████╗░░██████╗██╗░░██╗
echo ████╗░██║██║██║░██╔╝██║██║░░░░░██╔══██╗██╔════╝██║░░██║
echo ██╔██╗██║██║█████═╝░██║██║░░░░░██║░░██║╚█████╗░███████║
echo ██║╚████║██║██╔═██╗░██║██║░░░░░██║░░██║░╚═══██╗██╔══██║
echo ██║░╚███║██║██║░╚██╗██║███████╗╚█████╔╝██████╔╝██║░░██║
echo ╚═╝░░╚══╝╚═╝╚═╝░░╚═╝╚═╝╚══════╝░╚════╝░╚═════╝░╚═╝░░╚═╝
echo
echo

export OLD_PS1=PS1
export PS1="\n\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[[\033[01;31m\]Nikilosh\[\033[00m\]: \d \t]\n> "


#[keterangan: \n=username; \h=hostname; \W=basename; \$=root conditional ($user) or (#root); \w=current working directory]
