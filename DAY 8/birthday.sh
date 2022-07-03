#! /bin/bash

m=( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec )
declare -A b

for (( i=0; i<50; i++ ))
do
	x=$(( RANDOM%12 ))
	if [ -v b[${m[$x]}] ]
	then
		b[${m[$x]}]=$(( b[${m[$x]}]+1 ))
	else
		b[${m[$x]}]=1
	fi
done

for key in "${!b[@]}"
do
	if [ ${b[$key]} -eq 1 ]
	then
		unset b[$key]
	fi
done

for key in "${!b[@]}"
do
	echo "b[$key]: ${b[$key]}"
done
