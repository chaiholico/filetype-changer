#!/bin/bash
echo "Starting the script..."
newext="mpg"


for file in "$1"/*; do
    if [[ -f "$file" ]]; then
        echo "Processing file: $file"
        mv "$file" "${file%.*}.$newext"
        echo "Renamed $file to ${file%.*}.$newext"
    else
        echo " $file is not a valid file."
    fi
done
