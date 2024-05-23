#!/bin/bash
#arithmetic operation
x=10
y=2
let mul=$x*$y
echo "Multiply value : $mul"
#subtraction

sub=$(($x-$y))
echo -e "Subtraction\n$sub"

read -p "Input Marks: " marks
if [[ $marks -gt 40 ]]
then
echo "passed"
else
echo "Fail"
fi


