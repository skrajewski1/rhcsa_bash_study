#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 /path/to/source /path/to/backup"
	exit 1
fi

source_dir="$1"
dest_dir="$2"

echo "Source directory: $source_dir"
echo "Backup directory: $dest_dir"


if [ ! -d  "$source_dir" ]; then
	echo "$source_dir does not exist."
	exit 1
fi


if [ ! -d " $dest_dir" ]; then 
	echo "$dest_dir does not exist."
	mkdir -p "$dest_dir"
	if [ $? -ne 0 ]; then
		echo "Failed to create backup destination."
		exit 1
	fi
fi

echo "Directory check compelete!"

