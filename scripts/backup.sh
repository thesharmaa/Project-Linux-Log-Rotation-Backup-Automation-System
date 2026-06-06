#!/bin/bash

source=$1
destination=$2

if [ ! -d "$source" ]; then
    echo "Error: Source directory does not exist"
    exit 1
fi

mkdir -p "$destination"

timestamp=$(date +'%Y-%m-%d-%H-%M-%S')

backup_file="${destination}/backup-${timestamp}.tar.gz"

tar -czf "$backup_file" "$source"

if [ -f "$backup_file" ]; then
    echo "Backup Success"
    echo "Archive: $(basename "$backup_file")"
    echo "Size: $(du -h "$backup_file" | awk '{print $1}')"
else
    echo "Backup Failed"
    exit 1
fi

# deleting backups older than 14 days
find "$destination" -name "*.tar.gz" -mtime +14 -delete
