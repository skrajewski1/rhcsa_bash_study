#!/bin/bash

read -p  "Please enter directory name: " dir

if [ -e "$dir" ]; then
	echo "Directory exists."
else
	mkdir "$dir"
	chown $USER:cloud "$dir"
	chmod 744 "$dir"
fi
