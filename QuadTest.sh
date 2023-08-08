#!/bin/bash

source_dir="/Users/quadrionigbanjo/Documents/QuadDemo"
dest_dir="//Users/quadrionigbanjo/Documents/QuadDes"
today_date=$(date +%d%m%y)

for file in "$source_dir"/*; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        if [[ "$filename" == *"$today_date"* ]]; then
            mv "$file" "$dest_dir"
            echo "Moved $filename to $dest_dir"
        fi
    fi
done
