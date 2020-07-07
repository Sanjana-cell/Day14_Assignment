#!/bin/bash -x
#variables
result_1=0
result_2=0
result_3=0

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

function emailValidation(){
	email=$1
	pattern_1="^[a-zA-Z][0-9a-zA-Z\_\.\&\+\#]*\@+b(l)\.co(.in)*$"
	if [[ $email =~ $pattern_1 ]]
	then
		echo 1
	else
		echo 0
	fi
}

read -p "Enter First name " firstName
result_1="$(nameValidation $firstName)"
case $result_1 in
        1) echo "First Name is Valid";;
        0) echo "First Name is not Valid";;
esac

read -p "Enter Last name " lastName
result_2="$(nameValidation $lastName)"
case $result_2 in
        1) echo "Last Name is Valid";;
        0) echo "Last Name is not Valid";;
esac

read -p "Enter Email ID " email
result_3="$(emailValidation $email)"
case $result_3 in
        1) echo "Email id is Valid";;
        0) echo "Email id is not Valid";;
esac

