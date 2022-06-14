#!/bin/bash -x

sum=0

for (( i=1; i<=3; i++ ))
do
	no=$(( RANDOM%900+100 ))
	echo "Random no $i: $no"
	sum=$(( sum+no ))
done

avg=$(( sum/3 ))

echo "sum: $sum"
echo "Average: $avg"
