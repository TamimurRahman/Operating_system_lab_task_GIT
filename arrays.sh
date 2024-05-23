#arrays
array=(1.2 hello 2 Tamim "Tanvir Rahman")
echo "${array[0]}"
echo "${array[1]}"
echo "${array[3]}"
echo "${array[*]}"
length=${#array[*]}
echo "array length is : $length"
index=${array[*]:1}
echo "start from index 1 to 3 $index"
array+=(new 1 0.2 "rohan rahman")
echo "updated value print ${array[*]}"

declare -A myArray
myArray=([name]="Tamimur Rahman" [age]=20.22)
echo "My name is ${myArray[name]} and my age is ${myArray[age]}"

newArray=(1 2 3 Hello Hi)
lengthx=${#newArray[*]}
for ( i=0;i<$lengthx;i++ )
do
echo "Value of array is ${newArray[$i]}"
done
