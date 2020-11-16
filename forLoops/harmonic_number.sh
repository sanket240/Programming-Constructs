#!/bin/bash 

echo "Enter a number"
read n
h=1
for ((i=1;i<=n;i++))
do
	a=$(awk 'BEGIN{print 1 / '$i'}')
	h=$(awk 'BEGIN{print '$h' + '$a'}')
	echo "Harmonic of $i is :$h"
done
echo "Harmonic value of $n  is: $h"
