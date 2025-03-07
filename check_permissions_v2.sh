#!/bin/bash

read -p "Enter a filename: " file

if [[ -f "$file" ]]; then
	echo "$file exists!"

	if [[ -r "$file" ]]; then
		echo "$file is readable."
	else
		echo "$file is not readable."
	fi

	if [[ -w "$file" ]]; then
		echo "$file is writable."
	else
		echo "$file is not writable."
	fi

	if [[ -x "$file" ]]; then
		echo "$file is executable."
	else
		echo "$file is not executable."
	fi
else
	echo "$file does not exist."
fi
