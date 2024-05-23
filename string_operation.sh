#!/bin/bash
myvar="How are you ?"
length=${#myvar}
echo "The string length is $length"
#string all upper case
upper=${myvar^^}
echo "all upper case string is : $upper"

#all lower case string is 
lower=${myvar,,}
echo "all lower case sring is : $lower"
#string replacement
newvar="My name is Tamim"
echo "$newvar"
replace=${newvar/Tamim/Tanvir}
echo "------------>$replace"
#slice  string

slice=${newvar:11:5}
echo "slice:$slice"

