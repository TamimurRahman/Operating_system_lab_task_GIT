#!/bin/bash
x=10
y=2
let mul=$x*$y
echo -e  "The operation is\n $mul"
add=$(($x+$y))
echo -e "Addition is \n $add"
read -p "Input Marks" marks
if [[ $marks -ge 80 ]]
then
echo "1st devision"
elif [[ $marks -ge 60 ]]
then echo "2nd devition"
elif [[ $marks -ge 40 ]]
then echo "3rd devision"
else
echo "Fail"
fi



