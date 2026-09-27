#!/bin/bash

# Read each line from standard input
while IFS= read -r dir_path; do
  # Skip any empty lines
  if [ -n "$dir_path" ]; then
    echo "Checking: $dir_path"
    ls -la "$dir_path"
    echo "----------------------------------------"
  fi
done
