#!/bin/bash

#
# Description: Create a timestamped backup of a directory
# Author: Code Snippets Repository
# Date: 2025-11-06
#
# Usage:
#     ./backup_directory.sh /path/to/source /path/to/backup/destination
#
# Example:
#     ./backup_directory.sh ~/documents ~/backups
#
# Dependencies:
#     - tar (usually pre-installed)
#     - gzip (usually pre-installed)
#

# Check if correct number of arguments provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <backup_destination>"
    echo "Example: $0 ~/documents ~/backups"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist"
    exit 1
fi

# Create backup destination if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create the backup
echo "Creating backup of $SOURCE_DIR..."
tar -czf "${BACKUP_DIR}/${BACKUP_NAME}" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: ${BACKUP_DIR}/${BACKUP_NAME}"
    echo "Backup size: $(du -h "${BACKUP_DIR}/${BACKUP_NAME}" | cut -f1)"
else
    echo "Error: Backup failed"
    exit 1
fi
