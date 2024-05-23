#!/bin/bash
file="/home/tamimur/operating_system/file.txt"
for name in $( cat $file)
do
echo "Name is $name"
done
echo "While loop"
while read name
do 
echo "value from file : $name"
done < file.txt

