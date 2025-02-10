#!/bin/bash
read -p "Enter a whole number: " number

if [ $((number % 2)) -eq 0 ]; then
	echo "Even"
else 
	echo "Odd"
fi
