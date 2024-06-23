#! /bin/zsh
if [ ! -d ~/scripts ] 
then mkdir ~/scripts
fi
touch ~/scripts/master-control.txt
for ((i=0;i<10;i++))
do 	
	dat=date
	let j=i+1
	(echo -n "task" $j ": " && $(echo $dat)) >> ~/scripts/master-control.txt
	sleep 2
done
