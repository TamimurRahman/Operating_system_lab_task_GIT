#!/bin/bash
read -p  "Input your age: " age
read -p "Input your country: " country
if [[ $age -ge 18 ]] || [[ $country ==  "Bangladesh" ]]
then 
echo "You can Vote now"
else
echo "You can't vote now"
fi


