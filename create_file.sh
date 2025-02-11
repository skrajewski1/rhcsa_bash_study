#!/bin/bash

read -p "Input file name: " file

if [ -e "$file" ]; then
	echo "File already exists."
else 
       	touch $file
	echo "File created successfully"
fi	

