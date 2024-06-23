#! /bin/bash
for ((i=0;i<=5;i++))
do 
	dat=$(echo $date)
	touch "$dat".txt
	sleep 1 
done
