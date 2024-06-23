#! /bin/bash
count=0
y=""
for x in $(cat dictionary.txt)
do
	if [[ $x == va* ]]
		then
			let count=count+1
			let y=$x
			echo -n "$x,"
		fi
done
if [ $count -gt 0 ]
then echo -e "\nit matches\ntotal count = $count"
	echo -e "last word to be matched = $y"
fi
