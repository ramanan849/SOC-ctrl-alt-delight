#!/bin/bash
a=(10 24 45 68)
b=(7 2 3 5 11)
read -p "Please enter a character - a/b: " char

# Use indirect reference to the array
if [[ $char == "a" || $char == "b" ]]; then
    subval=$char[@]
    #echo "$subval"
    he=("${!subval}")
    echo "[${he[1]}]"
else
    echo "Invalid input. Please enter 'a' or 'b'."
fi
name_arr=('g' 'o' 'r' 'b' 'l')
elem=${name_arr[3]}
echo $elem
revar=$elem[@]
var=("${!revar}")
echo "[${var[@]}]"
