#!/bin/bash

read -p "Enter a file name: " file

if [[ -f "$file" ]]; then
	echo "$file exists."

	perm=$( ls -l "$file" | awk '{print $1}') 

	if [[ "$perm" == *w* ]]; then
		echo "$file is writable."
	else
		echo "$file is not writable."
	fi
	
	if [[ "$perm" == *r* ]]; then
		echo "$file is readable."
	else
		echo "$file is not readable."
	fi

	if [[ "$perm" == *x* ]]; then
		echo "$file is executable."
	else
		echo "$file is not executable."
	fi
else
	echo "$file does not exist."
fi	
