#!/bin/bash 

read -p "Enter your username: " name

if  grep -q "^${name}:" /etc/passwd; then
	echo "User exists"
else
	echo "User does not exist"
fi	
