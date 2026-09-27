#!/bin/bash

# Read each line from standard input
while IFS= read -r dir_path; do
  # Skip any empty lines
  if [ -n "$dir_path" ]; then
    echo "Removing: $dir_path"
    rm -rf "$dir_path"
  fi
done
