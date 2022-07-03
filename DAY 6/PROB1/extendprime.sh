#! /bin/bash

read -p "Enter lower limit: " l
read -p "Enter upper limit: " u

for (( x=l; x<=u; x++ ))
do
	prime=1
	for (( i=2; i<=x/2; i++ ))
	do
	        if [ $(( x%i )) -eq 0 ]
	        then
	                prime=0
	                break
	        fi
	done
	if [ $prime -eq 1 ]
	then
	        echo "$x is prime"
	fi
done
