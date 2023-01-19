#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Error: Both filesdir and searchstr arguments must be specified."
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

# Find all files in directory and subdirectories
files=$(find "$filesdir" -type f)
num_files=$(echo "$files" | wc -l)

# Search for searchstr in all files
matching_lines=$(grep -r "$searchstr" "$filesdir")
num_matching_lines=$(echo "$matching_lines" | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
