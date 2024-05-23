#!/bin/bash
myArray=( 1 2 3 Hello Hi)
length=${#myArray[*]}
for ((i=0;i<$length;i++))
do
echo "value of array is ${myArray[$i]}"
done
echo "While loop"

count=0
num=10
let i=$count
while [[ $i -le $num ]]
do
echo "count : $i"
let i++
done
echo "Untill loop"
a=10
until [[ $a -le 1 ]]
do 
echo "Value a : $a"
let a--
done

echo "Infinite loop"
while true
do
echo "Hi buddy"
sleep 2s
done
