#! /bin/bash -x

a[0]=0

for (( i=0; i<10; i++ ))
do

	a[$i]=$((RANDOM%900+100))
	echo "a[$i] = ${a[$i]}"
done

l=0
l2=0

for n in ${a[*]}
do
	if [ $n -gt $l ]
	then
		l2=$l
		l=$n
	elif [ $n -gt $l2 ]
	then
		l2=$n
	fi

done

echo "second Largest: $l2"

s=$l
s2=$l

for x in ${a[*]}
do
	if [ $x -lt $s ]
	then

		s2=$s
		s=$x
	elif [ $x -lt $s2 ]
	then

		s2=$x
	fi
done
echo "second smallest: $s2" 
