#!/bin/bash


#Title             : Convert .dot to selected format
#Creation date     : 7-Jun-2020
#Author            : Mohammad Miftakhus Sholikin
#Github            : https://github.com/mohammad-miftakhus-sholikin
#Description       : Script to convert .dot file into selected format output

#format
list_format=(
canon
eps
imap
json
plain-ext
svgz
x11
cmap
fig
imap_np
json0
png
tk
xdot
cmapx
gd
ismap
mp
pov
vml
xdot1.2
cmapx_np
gd2
jpe
pdf
ps
vmlz
xdot1.4
dot
gif
jpeg
pic
ps2
vrml
xdot_json
dot_json
Tgv
Tjpg
Tplain
Tsvg
wbmp
xlib
)

# pilih output format
echo "Ketikan jenis output format berikut."
for i in "${list_format[@]}"; do
  echo "format = $i"
done

# output format terpilih
read -p "Output format terpilih " format

# membuang white space di nama file
for f in *.dot
do
  new="${f// /_}"
  if [ "$new" != "$f" ]
  then
    if [ -e "$new" ]
    then
      echo tidak merubah nama \""$f"\" karena \""$new"\" sudah nama sesuai
    else
      echo merubah "$f" menjadi "$new"
    mv "$f" "$new"
  fi
fi
done

# melist .dot file di direktori
filename=(*.dot)

# konversi format ke file output
if [[ $filename == *.dot ]]; then
  for filename in "${filename[@]}"; do 
    echo " "
    echo $filename
    dot -T$format $filename > $filename.$format
    echo "Hilangkan .dot pada nama file output"
  done
else
  echo "Tidak ditemukan file *.dot"
fi
