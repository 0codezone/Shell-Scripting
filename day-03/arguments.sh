#!/bin/bash


echo "hello welcome to day3 of shell scriptiing"

date

name="moht"
echo "my name is ${name}"

echo "what is your name write it in input : "
read name
echo "welcome $name"

#--------------------------arguemtns example ---------------

scriptname=$0
num1=$1
num2=$2

# Calculate sum using $(( ))
sum=$(( num1 + num2 ))

echo "This script name is: ${scriptname}"
echo "Sum of your two arguments (${num1} + ${num2}) is: ${sum}"
echo "list , $@"
echo "arg count , $#"

