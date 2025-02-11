#!/bin/bash

read -p "Enter a filename: " name

if [[ -f "$name" ]]; then
	if [[ -r "$name" && -w "$name" && -x "$name" ]]; then
		echo "$name exists and is readable, writeable, and executable."
	else 
		echo "$name exists but does not have one of the following: readable, writeable, or executable."
	fi
else
	echo "File does not exist."

fi
