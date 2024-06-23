#! /bin/bash
echo "using \$* :"
for arg in "$*"
do
	#echo -e "Hello, $arg, nice to see you.\nWould you like a cup of tea, $arg?"
	echo "[$arg]"
done
echo -e "*****\nusing \$@ :"
for i in $@
do 
	echo "[$i]"
done
