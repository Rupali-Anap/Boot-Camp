#!/bin/bash -x

a=`echo 42 | awk '{ print $1/12 }'`

b=`echo 60 | awk '{ x=$1/3.28; y=$2/3.28; print x*y }'`

c=`echo $b | awk ' { print $1*25 }'`


echo "42in is $a feet"

echo "Rectangular plot of 60 feet x 40 feet in meter square: $b"

echo "Area of 25 such plots: $c"
