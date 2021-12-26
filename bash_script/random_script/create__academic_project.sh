#!/bin/bash


#Title             : Auto create new academic project
#Creation date     : 2-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : This script use to create new academic project

# User input
#a. nama pemilik
read -p "Nama: " name_of_owner
user="$name_of_owner"
#b. alamat url github
read -p "gihub 'https://github.com/'" github_url
github="https://github.com/$github_url"
#c. nama proyek
read -p "Isikan nama direktori proyek (exp: 1_2020_Nama_proyek) : " name_project
dest="$PWD/$name_project/"
#d. judul proyek
read -p "Judul proyek (exp: Nama_proyek): " title_project
title="$title_project"
#e. deskripsi proyek
read -p "Deskripsi proyek: " desc_project
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
  mkdir ${dest}/work-desk
  mkdir ${dest}/work-desk/Analysis__${title_project}
  mkdir ${dest}/work-desk/Publication__${title_project}
  mkdir ${dest}/work-desk/Reference__${title_project}
  cp -r ~/Templates/new_academic_project/Data_yyyy__Project_name.xlsx ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Result_yyyy__Project_name.xlsx ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Rscript_yyyy__Project_name_metal_qualitative.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Rscript_yyyy__Project_name_metal_quantitative.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Rscript_yyyy__Project_name_descriptive.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Diagram_yyyy__Project_name.R ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Diagram_yyyy__Project_name.dot ${dest}/Analysis__${title_project}
  cp -r ~/Templates/new_academic_project/Prisma_diagram_yyyy__Project_name.tex ${dest}/Analysis__${title_project}
fi

## Jika file tujuan tidak ada NEW_git_add_new_in_repo.sh maka buat file 
if [[ ! -f "${dest}/NEW_git_add_new_in_repo.sh" ]]; then
  printf "%-20s %b\n" \
    "#!/bin/bash" "" \
    "" "" \
    "" "" \
    "#Script" ": update git-repository" \
    "#Author" ": ${user}" \
    "#Github" ": ${github}" \
    "#Descr." ": ${desc}" \
    "#Date" ": ${date}" \
    "" "" \
    "# date" "" \
    "DATE=_date +%Y-%m-%d %T_ #ganti (_) dengan shiftoff (~)" "" \
    "" "" \
    "# change dir" "" \
    "cd work-desk/" "" \
    "" "" \
    "# run git" "" \
    "git init" "" \
    "git add ." "" \
    "git commit -m DATE #ganti komen" "" \
    "git remote add new ${github} #ganti url github" "" \
    "git push -u new master" "" \
    "" "" \
    "# quit" "" \
    "cd ../.." "" \
    "" "" \
    "# open url in browser" "" \
    "x-ww-browser ${github} #ganti url github" "" \
    "" "" \
    "#exit" "" \
    "exit" "" \
    "" "" \
    "#run other script" "" \
    "cd next_directory #ganti directorynya" "" \
    "source git_add_new_in_repo.sh" "" \ > ${dest}/NEW_git_add_new_in_repo.sh
  chmod +x ${dest}/NEW_git_add_new_in_repo.sh
fi

## Jika file tujuan tidak ada NEW_README.md maka buat file
if [[ ! -f "${dest}/NEW_README.md" ]]; then
  ### Buat NEW_README.md
  printf "%-20s %b\n" \
    "## Judul" ": Tulisan" \
    "### Deskripsi" ":$desc_project" \
    "" "" \
    "#### Subtitle" "" \
    "1. Sub Bab 1" "" \
    "   * [ ] a. Sub sub bab" "" \
    "   * [ ] b. Sub sub bab" "" \
    "   * [ ] c. Sub sub bab" "" \
    "   * [ ] d. Sub sub bab" "" \
    "   * [ ] e. Sub sub bab" "" \
    "2. Sub Bab 2" "" \
    "   * [ ] a. Sub sub bab" "" \
    "   * [ ] b. Sub sub bab" "" \
    "   * [ ] c. Sub sub bab" "" \
    "   * [ ] d. Sub sub bab" "" \
    "   * [ ] e. Sub sub bab" "" \
    "3. Sub Bab 3" "" \
    "   * [ ] a. Sub sub bab" "" \
    "   * [ ] b. Sub sub bab" "" \
    "   * [ ] c. Sub sub bab" "" \
    "   * [ ] d. Sub sub bab" "" \
    "   * [ ] e. Sub sub bab" "" \ > ${dest}/NEW_README.md

else
  echo -e "${RED}The name chosen for your new script is already used.\nPlease choose another name."
  #exit
fi
