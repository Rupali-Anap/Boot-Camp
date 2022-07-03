#!/bin/bash -x

read -p "Enter No:" n
power2=1

for (( i=0; i<=n; i++ ))
do
	echo "2^$i = $power2"
	power2=$(( power2*2 ))
done
