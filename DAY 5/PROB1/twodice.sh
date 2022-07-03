#!/bin/bash -x

d1=$(( $RANDOM%6+1 ))
d2=$(( $RANDOM%6+1 ))

	echo " dice1 roll: $d1"
	echo " dice2 roll: $d2"

	echo "total roll: $(( $d1+$d2 ))"
