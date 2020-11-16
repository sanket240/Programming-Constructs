#!/bin/bash -x

echo "Enter three numbers: "
read a b c
d=$(( a + b * c ))
e=$(( a % b + c ))
f=$(( c + a / b ))
g=$(( a * b + c ))

if [ $d -gt $e ] && [ $d -gt $f ] && [ $d -gt $g ]; 
then
	echo "$d is max"
elif [ $e -gt $d ] && [ $e -gt $f ] && [ $e -gt $g ] ;
then
	echo "$e is max"
elif [ $f -gt $d ] && [ $f -gt $e ] && [ $f -gt $g ] ;
then
	echo "$f is max"
elif [ $g -gt $d ] && [ $g -gt $e ] && [ $g -gt $f ] ;
then
	echo "$g is max"
fi

if [ $d -lt $e ] && [ $d -lt $f ] && [ $d -lt $g ] ;
then
	echo "$d is min"
elif [ $e -lt $d ] && [ $e -lt $f ] && [ $e -lt $g ] ;
then
	echo "$e is min"
elif [ $f -lt $d ] && [ $f -lt $e ] && [ $f -lt $g ] ;
then
	echo "$f is min"
elif [ $g -lt $d ] && [ $g -lt $e ] && [ $g -lt $f ] ;
then
	echo "$g is min"
fi

