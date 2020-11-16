#!/bin/bash 

echo "Enter a number: "
read n
num=$n
rev=0
function palindrome() {
	while [ $n -gt 0 ]
	do
		m=$((n%10))
		n=$((n/10))
		# rev=$( echo ${rev}${s} )
		rev=`expr $rev \* 10 + $m`
	done
	echo $rev
if [ $num -eq $rev ]
then
	echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
}

palindrome
