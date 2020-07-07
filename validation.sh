#!/bin/bash -x
function nameValidation()
{
	name=$1
	pattern="^[A-Z]{1}[A-Za-z]{2,}$"
	if [[ $name =~ $pattern ]]
	then
		echo 1
	else
		echo 0
	fi
}
read -p "Enter First name" firstName
result_1="$(nameValidation $firstName)"
echo $result_1
case $result_1 in
        1) echo "First Name is Valid";;
        0) echo "First Name is not Valid";;
esac

read -p "Enter First name" lastName
result_2="$(nameValidation $lastName)"
case $result_2 in
        1) echo "Last Name is Valid";;
        0) echo "Last Name is not Valid";;
esac
