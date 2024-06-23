#! /bin/bash
#question 1.2
#Gokularamanan R S, 23B1854
alphabet=$1
if [ $alphabet = 'a' ] || [ $alphabet = 'A' ]
then 
   echo   -e   "    /\ \n   /__\ \n  /----\ \n /      \ "
   #echo     "   /__\ "
   #echo  -E  "  /----\ "
   #echo  -E " /      \ "
elif  [ $alphabet = 'b' ] || [ $alphabet = 'B' ] 
then
    echo -e " ______ \n||___|| \n||    || \n||____||  "
    #echo "||___|| "
    #echo ""
    #echo "||____||"
elif [ $alphabet = 'c' ] || [ $alphabet = 'C' ]
then 
    echo " _____  "
    echo "||      "
    echo "||      "
    echo "||____  "
elif [ $alphabet = 'd' ] || [ $alphabet = 'D' ]
then
    echo " ______ "
    echo "  |   ] "
    echo "  |   ] "
    echo " _|___] "
elif [ $alphabet = 'e' ] || [ $alphabet = 'E' ]
then 
    echo " ______ "
    echo " {      "
    echo " {===   "
    echo " {____  "
elif [ $alphabet = 'f' ] || [ $alphabet = 'F' ]
then 
    echo " ###### "
    echo " #     "
    echo " #===   "
    echo " #      "
elif [ $alphabet = 'g' ] || [ $alphabet = 'G' ]
then 
    echo "   _____"
    echo "  /     "
    echo " /  ==>>"
    echo "/_____/ "
elif [ $alphabet = 'h' ] || [ $alphabet = 'H' ]
then
    echo " [     ]"
    echo " [=====]"
    echo " [=====]"
    echo " [     ]"
elif [ $alphabet = 'i' ] || [ $alphabet = 'I' ]
then 
    echo "---ii---"
    echo "   ii   "
    echo "   ii   "
    echo "---ii---"
elif [ $alphabet = 'j' ] || [ $alphabet = 'J' ]
then
    echo "_____"
    echo "{  jj"
    echo "   jj"
    echo " \_j}"
elif [ $alphabet = 'k' ] || [ $alphabet = 'K' ]
then
    echo "k //  "
    echo "k//   "
    echo "k\\\  "
    echo "k \\\ "
elif [ $alphabet = 'l' ] || [ $alphabet = 'L' ]
then 
    echo "##   "
    echo "##   "
    echo "##___"
    echo "#####"
elif [ $alphabet = 'm' ] || [ $alphabet = 'M' ]
then
    echo "__    __"
    echo "||\  /||"
    echo "|| \/ ||"
    echo "|| -- ||"
elif [ $alphabet = 'n' ] || [ $alphabet = 'N' ]
then 
    echo "__   __ "
    echo "||\\  ||"
    echo "|| \\ ||"
    echo "||  \\||"
elif [ $alphabet = 'o' ] || [ $alphabet = 'O' ]
then
    echo "======="
    echo "=  o  ="
    echo "=  o  ="
    echo "======="
    elif [ $alphabet = 'p' ] || [ $alphabet = 'P' ]
then
    echo "PPppp"
    echo "Pp__}"
    echo "Pp   "
    echo "p    "
elif [ $alphabet = 'q' ] || [ $alphabet = 'Q' ]
then
    echo "====|||   "
    echo "====|||   "
    echo "==  q\\\  " 
    echo "======\\\ "
elif [ $alphabet = 'r' ] || [ $alphabet = 'R' ]
then
    echo "____ "
    echo "||_) "
    echo "||\\ "
    echo "|| \\"
elif [ $alphabet = 's' ] || [ $alphabet = 'S' ]
then
    echo "______"
    echo "||    "
    echo "||___ "
    echo "____||"
elif [ $alphabet = 't' ] || [ $alphabet = 'T' ]
then
    echo "______"
    echo "  ||  "
    echo "  ||  "
    echo "  ||  " 
elif [ $alphabet = 'u' ] || [ $alphabet = 'U' ]
then
    echo "U    U"
    echo "U    U"
    echo "U    U"
    echo " UUUU "
elif [ $alphabet = 'v' ] || [ $alphabet = 'V' ]
then
    echo "\\\    //"
    echo " \\\  // "
    echo "  \\\//  "
    echo "   VV   "
elif [ $alphabet = 'w' ] || [ $alphabet = 'W' ]
then    
    echo "w  w  w"
    echo "w  w  w"
    echo "w  w  w"
    echo "ww/ \ww"
elif [ $alphabet = 'x' ] || [ $alphabet = 'X' ]
then  
    echo "\\\   //"
    echo " \\\ //"
    echo " // \\\ "
    echo "//   \\\ "
elif [ $alphabet = 'y' ] || [ $alphabet = 'Y' ]
then      
    echo "\\\  //"
    echo " \\\//"
    echo "  ||"
    echo "  ||"
elif [ $alphabet = 'z' ] || [ $alphabet = 'Z' ]
then
    echo "_____"
    echo "   //"
    echo "  //"
    echo " //____"
fi