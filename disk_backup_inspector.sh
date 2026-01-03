#!/bin/bash

echo "=== Disk & Backup Inspector ==="
echo
echo "Disk usage summary:"
echo "-------------------"
df -h
echo
echo "Backup section"
echo "--------------"

read -p "Enter directory to back up: " SRC

if [ ! -d "$SRC" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup-$(basename "$SRC")-$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_NAME" "$SRC"

echo "Backup created: $BACKUP_NAME"
echo
read -p "Perform safe rsync dry-run backup? (y/n): " ANSWER

if [ "$ANSWER" = "y" ]; then
    read -p "Source directory: " RSRC
    read -p "Destination directory: " RDEST

    rsync -av --dry-run "$RSRC/" "$RDEST/"
fi
