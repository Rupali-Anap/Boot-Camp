#! /bin/bash

read -p "Enter no: " n

h=1

for (( i=2; i<=n; i++ ))
do
	h=`echo $h $i | awk '{print $1+1/$2}'`
done

if [ $n -eq 0 ]
then
	echo "No should be greater than 0"
else
	echo "Harmonic no of $n: $h"
fi
