#! /bin/bash

read -p "Enter no: " n

pow2=1
i=0

while [ $pow2 -le 256 -a $i -le $n ]
do
        echo "2^$i = $pow2"
        pow2=$(( pow2*2 ))
	i=$(( i+1 ))
done
