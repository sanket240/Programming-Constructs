#!/bin/bash
echo -m "Enter start: "
read a
echo -n "Enter end: "
read b
for ((i=a; i<=b; i++))
do
	if [ $((i%11)) -eq 0 ]
	then
		arr[i]=$i
		echo $i
	fi
done
