#!/bin/bash 

#variables
firstName=""
lastName=""
email=""
num=0
password=""
result_1=0
result_2=0
result_3=0
result_4=0
result_5=0
pattern_1=""
pattern_1=""
pattern_2=""
pattern_3=""
pattern_4=""
function nameValidation()
{
	pattern_1="^[A-Z]{1}[A-Za-z]{2,}$"
	if [[ $1 =~ $pattern_1 ]]
	then
		echo 1
	else
		echo 0
	fi
}

function emailValidation(){
	pattern_2="^[a-zA-Z][0-9a-zA-Z\_\.\&\+\#]*\@+b(l)\.co(.in)*$"
	if [[ $1 =~ $pattern_2 ]]
	then
		echo 1
	else
		echo 0
	fi
}
function mobileNoValidation(){
	pattern_3="^[\+0-9]{2,3}[ ]?[0-9]{10}$"
	if [[ $1$2 =~ $pattern_3 ]]
	then
		echo 1
	else
		echo 0
	fi
}
function passwordValidation(){
	pattern_4="[A-Z]+[0-9]+[@#$&+-.$%^&*(),;\"\'?/]+[a-zA-Z0-9@#$&+-.$%^&*(),;\"\'?/]{8,}$"
	if [[ $1 =~ $pattern_4 ]]
	then
		echo 1
	else
		echo 0
	fi
}
echo "FIRST NAME VALIDATION"
echo "---------------------"
read -p "Enter First name " firstName
result_1="$(nameValidation $firstName)"
case $result_1 in
        1) echo "First Name is Valid";;
        0) echo "First Name is not Valid";;
esac
echo "____________________"

echo "LAST NAME VALIDATION"
echo "--------------------"
read -p "Enter Last name " lastName
result_2="$(nameValidation $lastName)"
case $result_2 in
        1) echo "Last Name is Valid";;
        0) echo "Last Name is not Valid";;
esac
echo "_____________________"

echo "EMAIL ID VALIDATION"
echo "--------------------"
read -p "Enter Email ID " email
result_3="$(emailValidation $email)"
case $result_3 in
        1) echo "Email id is Valid";;
        0) echo "Email id is not Valid";;
esac
echo "____________________"

echo "MOBILE NUMBER VALIDATION"
echo "------------------------"
read -p "Enter mobile Number " num
result_4="$(mobileNoValidation $num)"
case $result_4 in
	1) echo "Mobile Number is valid";;
	0) echo "Mobile Number is not valid";;
esac

echo "PASSWORD VALIDATION"
echo "------------------------"
read -p "Enter Password " password
result_5="$(passwordValidation $password)"
case $result_5 in
	1) echo "Password is valid";;
	0) echo "Password is not valid";;
esac
echo "____________________"
