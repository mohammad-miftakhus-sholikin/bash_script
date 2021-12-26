#!/bin/bash


#Title             : Who are you
#Creation date     : 2-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use for take I/O from user

# ask the user for their name
echo Halo, dengan siapa saya berhadapan?
read -p "Siapakah ini? " varname
echo Senang berkenalan dengan anda  $varname

# ask the user for their name and password
read -p "Username: " uservar
#read -sp "Password: " passvar
echo
echo Terima kasih user $uservar kami telah mendapatkan data login anda 
echo Sedang melakukan konfirmasi...

# this computer
RED="\033[0;31m"
name=Sholikin
if [[ $uservar == $USER && $varname == $name ]]; then
  echo "Selamat siang $name dengan user aktif $USER"
#elif [[ $varname == $name ]]; then
#  echo "Selamat siang $name"
else
  echo
  echo -e "${RED} Apakah anda yakin $varname? User aktif $name komputer ini adalah $USER"
  echo
fi
