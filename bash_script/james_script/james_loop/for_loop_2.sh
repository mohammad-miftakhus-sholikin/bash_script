#!/bin/bash
#
#05/08/2020
#
echo "Script8_2020__For_loop"

if [ $# -eq 0 ]; then
 echo "Please enter at least 1 parameter."
 exit 255
fi

for i in $* # the "$*" returns every parameter given
do
 echo ""
 echo -n "Parameter: $i "
done

echo "" # carriage return
echo "End of Script8_2020__For_loop"
exit 0

