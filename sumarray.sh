#!/bin/bash -x

a[0]=0

for (( i=0; i<3; i++ ))
do

	read -p " Enter number: " n
	a[i]=$n
done

sum=$(( a[0]+a[1]+a[2] ))
echo "Sum: $sum"
