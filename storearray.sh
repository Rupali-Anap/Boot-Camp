#!/bin/bash -x

a[0]=0
pos=0

for (( i=1; i<100; i++ ))
do
	if [ $(( i%10 )) -eq $(( i/10 )) ]
	then
		a[pos++]=$i
	fi
done

echo "a[*]: ${a[*]}"

