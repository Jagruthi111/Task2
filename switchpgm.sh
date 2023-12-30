#!/bin/bash
echo "Enter first number"
read num1
echo "Enter second number"
read num2
echo -e "Enter operator\n+ :Add\n-:Substract\n*: Multiply\n/ :Divide\n% : Modulus"
read opr
case $opr in
	'+')sum=`expr $num1 + $num2`
		echo "$num1+$num2= $sum"
		;;
	'-')sub=`expr $num1 - $num2`
		echo "$num1-$num2= $sub"
		;;
	'*')pro=`expr $num1 \* $num2`
                echo "$num1*$num2= $pro"
		;;
	'/')if [ $num2 -ne 0 ]
		then
			quo=`expr $num1 / $num2`
        	        echo "$num1/$num2= $quo"
		else
			echo "Divisor =0, division not possible"
	fi
		;;
	'%')if [ $num2 -ne 0 ]
	then
		rem=`expr $num1 % $num2`
                echo "$num1%$num2= $rem"
	else
		echo "Divisor =0, division not possible"
	fi
		;;
	esac



