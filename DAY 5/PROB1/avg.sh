#!/bin/bash -x

total=0

for (( i=1; i<=5; i++ ))
do
	no=$(( $RANDOM%90+10 ))
	echo "random no is $i: $no"
	
	total=$(( total+no ))
done

avg=$(( total/5 ))

echo "total: $total"
echo "average: $avg"
