#!/bin/bash

source_dir=$1
destination_dir=$2

if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory does not exist"
    exit 1
fi

mkdir -p "$destination_dir"

# Compress logs older than 7 days
compressed_count=$(find "$source_dir" -type f -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)
echo "Compressed files: $compressed_count"

# Delete gz files older than 30 days
deleted_count=$(find "$destination_dir" -type f -name "*.gz" -mtime +30 -delete -print | wc -l)
echo "Deleted files: $deleted_count"
