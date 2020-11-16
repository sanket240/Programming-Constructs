#!/bin/bash 

echo "Think a number between 1 to 100"
low=1
high=100
med=0
while [ $low -ne $med ]
do
	med=$(( low + (high-low)/2 ))
	read -p "Enter 1 if num is less than $med or 0 if greater than $med: " ans
if [ $med -eq $low ]
then
	if [ $ans -eq 1 ]
	then
		# echo $med
		break
	else
		echo $((med+1))
		break
	fi
fi

if [ $ans -eq 1 ]
then
	high=$med
else
	low=$((med+1))
fi
done

echo "Magic number is $med"
