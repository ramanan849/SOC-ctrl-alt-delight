#!/bin/bash
# Example to check if one string is greater than 
# the other
# first string
a=209
b=3
if [ "$a" -ge "$b" ]
then
   echo "$a is greater than $b"
else
   echo "$a is not greater than $b"
fi
i=10
if [ ! -d ~/lukog/ef ]
	then mkdir ~/lukog/ef
	fi

until [ $i -eq 0 ]
do 	
	touch "./ef/F-this-$i.txt" 
	echo -e "Add this $i" > "./ef/F-this-$i.txt"
	dat=date
	(echo -e "File no. : $i \n" && echo -n "Date of creation:" && $(echo -n $dat) && echo -e "\n--EOF--") >> "./ef/F-this-$i.txt"	
	let i=i-1
done

		
