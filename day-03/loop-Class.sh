#!/bin/bash

<< task 
$1 1st folder name
$2 start range argument
$3 range end arg
task

for ((number=$2; number<=$3; number++))
do
	mkdir "$1-$number"
	echo "$number folder created"
done


echo "required folder are created succcessfully"


