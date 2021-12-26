#!/bin/bash


#Title             : Auto create new sub academic project
#Creation date     : 5-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use to create new sub academic project

# User input
#a. nama sub proyek
read -p "Isikan nama direktori sub proyek (exp: 2020__Nama_proyek) : " name_project
dest="$PWD/$name_project/"
#b. judul sub proyek
read -p "Judul sub proyek (exp: Nama_proyek): " title_project
title="$title_project"
#c. deskripsi sub proyek
read -p "Deskripsi sub proyek: " desc_project
desc="$desc_project"

# Input lainnya
#a. tanggal
date=`date +%m-%d-%Y`
#b. styles dari eksekusi script
RED="\033[0;31m"
WHITE="\033[1;37m"                               
NC="\033[0m"                       

# Kondisional script
## Jika directory tujuan tidak ada maka buat direktory
if [[ ! -d "${dest}" ]]; then 
  echo -e "Creating ${WHITE}${dest}${NC} directory..." && sleep 1.5 && mkdir ${dest} 
  ### Buat sub directory lainnya
  mkdir ${dest}/Analysis__${title_project}
  mkdir ${dest}/Publication__${title_project}
  mkdir ${dest}/Reference__${title_project}
  cp -r ~/Templates/new_academic_project/Data_yyyy__Project_name.ods ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Rscript_yyyy__Project_name_metal_qualitative.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Rscript_yyyy__Project_name_metal_quantitative.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Cohort_yyyy__Project_name.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Cohort_yyyy__Project_name.dot ${dest}/Analysis__${title_project}
else
  echo -e "${RED}The name chosen for your new script is already used.\nPlease choose another name."
  #exit
fi
