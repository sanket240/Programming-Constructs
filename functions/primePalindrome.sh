!/bin/bash -x

echo "Enter a number: " 
read n 
function prime() {
i=2
f=0
while [ $i -le `expr $n / 2` ]
do
	if [ `expr $n % $i` -eq 0 ]
	then
		f=1
	fi
	((i++))
done
if [ $f -eq 1 ]
then
	echo "Number is not prime"
else
	echo "Number is prime"
fi
}
function palindrome() {
	num=$n
	rev=0
	while [ $n -gt 0 ]
	do
		m=$((n%10))
		n=$((n/10))
		rev=`expr $rev\* 10 + $m`
	done
	if [ $num -eq $rev ]
	then
		echo "Palindrome"
		echo "Check prime or not(0/1)"
		read no
		if [ no -eq 0]
		then
		prime $num
		else
		break;
		fi
		
	else
		echo "Not palindrome"
	fi

}

prime $n
palindrome $n


