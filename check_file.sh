#!/bin/bash

read -p "Enter a filename: " file

if [[ -f "$file" ]]; then
	echo "$file exists and is $(wc -c < "$file") bytes"
else
	echo "File does not exist."
fi
