#!/bin/bash -x
read -p "Enter the first name " firstName
pattern="^[A-Z][a-z]*{3,}$"
if [[ $firstName =~ $pattern ]]
then
	echo "Valid First Name"
else
	echo "Not Valid First Name"
fi

