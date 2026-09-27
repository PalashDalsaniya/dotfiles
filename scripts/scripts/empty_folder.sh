#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <directory_path>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a valid directory."
  exit 1
fi

TARGET_DIR=$(realpath "$1")

find "$TARGET_DIR" -type d -empty
