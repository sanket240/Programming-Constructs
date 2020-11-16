#!/bin/bash -x

echo "Enter a year: "
read year
check=$(( $year % 4 ))
if [ $check -eq 0 ]
then
	echo "It is a leap year"
else
	echo "It is non leap year"
fi

