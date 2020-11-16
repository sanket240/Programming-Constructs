#!/bin/bash 


echo "Enter your option 1.Deg Celcius to Fahrenheit  2.Fahrenheit to Deg Celsius"
read op
function degTofah() {
echo "Enter temperature from 0 to 100 deg celcius"
read t
degF=$(awk 'BEGIN{print ('$t' * 9 / 5) + 32}')
echo "Temperature in Fahrenheit is $degF"
}

function fahTodeg() {
echo "Enter  temperature from 32 to 212 deg fahrenheit"
read t
degC=$(awk 'BEGIN{print ('$t' - 32) * (5 / 9)}')
echo "Temperature in deg Celsius is $degC"
}

case $op in
	1)
	degTofah
	;;
	2)
	fahTodeg
	;;
	*)
	echo "Enter valid option"
	;;
esac
