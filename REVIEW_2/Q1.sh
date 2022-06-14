#!/bin/bash -x

echo $(( RANDOM%900+100 ))
sum=0

echo "enter no" 
while [ $sum $(( RANDOM%900+100 ))]
do
	sum=[ $(( RANDOM%900+100 )) +$sum ]
done

echo $sum
