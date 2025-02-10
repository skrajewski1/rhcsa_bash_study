#!/bin/bash
read -p "Please input path to directory: " dir

file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)

echo "There are $file_count in $dir."
