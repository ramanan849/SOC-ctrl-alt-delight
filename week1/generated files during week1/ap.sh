#! /bin/bash
echo "value of 'a' = $1"
echo "value of 'd'= $2"
echo "value of 'n' = $3"
let a=$1,d=$2,n=$3
let nm=n-1
let part1=a*2,part2=d*nm
let part3=part1+part2
let part4=part3/2
let sum=part4*n
#sum=n*(a*2+n_m*d)/2
let nthterm=a+part2
echo "$3th term = $nthterm"
echo -e "sum of n=$3 terms = $sum\n\n"
i=1
while [ $i -le $n ]
do 
	let nm=i-1
	let b=a+d*nm
	echo $b
	let i=i+1
done
