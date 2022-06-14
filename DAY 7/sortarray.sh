#!/bin/bash -x

a[0]=0

for (( i=0; i<10; i++ ))
do
	a[$i]=$((RANDOM%900+100))
	echo "a[$i] = ${a[$i]}"
done

s=( $(
	for n in "${a[*]}"
	do
		echo "$n"
	done | sort) )

echo "Sorted: ${s[*]}"

echo "second largest: ${s[8]}"
echo "second smallest: ${s[1]}"

