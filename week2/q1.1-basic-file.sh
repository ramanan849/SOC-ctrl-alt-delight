#!/bin/bash
#Question 1.1
#Gokularamanan R S, 23B1854
#Function for printing progress bar
progress_bar(){
    local count=0
    percent=$1
    limit=$(expr $percent / 2)
    while [ $count -le $limit ]
    do
        echo -ne "+"
        let count=count+1
    done
    while [ $count -le 50 ] 
        do
            echo -ne '.'
            let count=count+1
        done
        echo -ne "    [ $percent % ]\r"
    #echo -ne "\n"
}
#End of the function
        echo -e "Progress made so far:\n---------------------------------------------------"
#start of file manager tasks
(echo './' > dot.txt) #task1
percent=2
progress_bar "$percent"
sleep 1
((tr "[/]" "[&]" < path.txt) > pathi.txt) #task2
let percent=percent+6
progress_bar "$percent"
sleep 1
(for i in $(cat pathi.txt); do (touch $(echo $i));done)     #task3
let percent=percent+4
progress_bar "$percent"
sleep 1
currennt_dir=$(pwd) #task3.1
let percent=percent+6
progress_bar "$percent"
sleep 1
create_dir_and_files(){
    ( echo $i > temp-line.txt) #task4
    ((tr "[/]" "[&]" < temp-line.txt) > pre-temp-name.txt) #task5
    (echo "'" > quote.txt) #task6
    (paste -d '' quote.txt pre-temp-name.txt quote.txt > temp-name.txt) #task7
    ((cut -d ';' -f2 temp-line.txt) > pre-temp-path.txt) #task8
    (paste -d '' dot.txt pre-temp-path.txt > temp-path.txt) #task9
    (mkdir -p $(cat pre-temp-path.txt)) #task10
    (mv $(cat pre-temp-name.txt) $(cat temp-path.txt)) #task10
    ((cut -d ';' -f1 temp-line.txt) > name.txt) #task11
    (cp pre-temp-name.txt name.txt temp-path.txt pre-temp-path.txt $(cat temp-path.txt)) #task12
    cd $(cat temp-path.txt) #task13
    (mv $(cat pre-temp-name.txt) $(cat name.txt)) #task14
    ( rm pre-temp-name.txt name.txt temp-path.txt pre-temp-path.txt ) #task15
    cd $currennt_dir 
}
for i in $(cat path.txt)
do 
    create_dir_and_files
    let percent=percent+18
    progress_bar "$percent"
    sleep 1.2
done
rm dot.txt name.txt pathi.txt pre-temp-name.txt pre-temp-path.txt quote.txt temp-line.txt temp-name.txt temp-path.txt #removing all the temporary files created #task16
let percent=percent+10
progress_bar "$percent"
sleep 1
echo -e "\n---------------------------------------------------\nAll tasks completed.\n"