#!bin/bash

#Simple Backup Script

SOURCE="$HOME/Documents"

DESTINATION="$HOME/Backup"

mkdir -p "$DESTINATION"

cp -r "$SOURCE"/* "$DESTINATION"

echo "$(data) : Backup completed successfully!" >> "$HOME/backup_log.txt"


