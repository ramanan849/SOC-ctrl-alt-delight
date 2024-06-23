#! /bin/bash
arr=($1 $2 $3 $4)
c=1
for i in ${arr[@]}
do
	let $(echo "a$c")=$i
	let c=c+1
	#echo $i
done

echo a1 = $a1
echo a2 = $a2
echo a3 = $a3
echo a4 = $a4
echo [${arr[@]}]
arr[4]+=3
echo [${arr[@]}] #appending a new element, 3 to the end
unset arr[3] #resetting 3rd index value
echo [${arr[@]}]
arr[3]+=8
echo [${arr[@]}]
let y=99,x=6
fun(){
	local x=2
	local y=4

}
fun
echo global var x = $x
echo local variable y = $y
