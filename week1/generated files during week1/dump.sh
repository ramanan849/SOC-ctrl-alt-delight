#! /bin/bash
read -p "Hi, what's your name: " name
declare -l name
name=$name
declare -a name_arr
for ((c=0;c<${#name};c++))
do
    name_arr[$c]+="${name:c:1}"
done
echo ${name_arr[@]}
for ((j=0))
for ((c=0;c<${#name};c++))
do
