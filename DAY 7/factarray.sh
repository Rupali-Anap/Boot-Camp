#!/bin/bash -x

read -p " Enter number: " n
p[0]=0 
pos=0

for (( x=1; x*x<=n; x++ ))
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

	if [ $prime -eq 1 -a $(( n%x )) -eq 0 ]
	then
		p[ pos++ ]=$x
	fi
done

echo " prime factors of $n: ${p[*]} "
