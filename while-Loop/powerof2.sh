#!/bin/bash 

read -p "Enter a number: " n
for (( ind=2; ind<=$n; ))
do
	if [ $(( n % ind )) -eq 0 ]
	then
		n=$(( n / ind ))
		echo "$ind"
	else
		((ind++))
	fi
done

