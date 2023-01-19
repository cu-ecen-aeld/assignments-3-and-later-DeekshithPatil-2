#!/bin/bash

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Error: Both writefile and writestr arguments must be specified."
    exit 1
fi

# Create the directory path if it doesn't exist
dir=$(dirname "$writefile")
mkdir -p "$dir"

# Write the file
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: Failed to create file $writefile"
    exit 1
fi
