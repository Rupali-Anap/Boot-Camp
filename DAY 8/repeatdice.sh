#! /bin/bash

declare -A roll

reached=0
while [ $reached -eq 0 ]
do
	x=$(( RANDOM%6+1 ))
	if [ -v roll[$x] ]
	then
		roll[$x]=$(( roll[$x]+1 ))
		if [ ${roll[$x]} -eq 10 ]
		then
			reached=1
		fi
	else
		roll[$x]=1
	fi
done

for key in "${!roll[@]}"
do
    echo "Roll[$key]: ${roll[$key]}"
done
