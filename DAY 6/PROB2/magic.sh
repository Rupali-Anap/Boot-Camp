#! /bin/bash

echo "Think of a no between 1-100"

reached=0
u=101
l=1

while [ $reached -eq 0 ]
do
	x=$(( (l+u)/2 ))
	read -p "Is your no less than $x (y/n): " chk
	if [ "$chk" = "y" ]
	then
		u=$x
	elif [ "$chk" = "n" ]
	then
		if [ $l -eq $x ]
		then
			u=$(( u-1 ))
		else
			l=$x
		fi
	fi
	if [ $l -eq $u ]
	then
		echo "The no you thought of was $l"
		reached=1
	fi
done
