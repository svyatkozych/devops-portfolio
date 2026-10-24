#!/bin/bash

PROJECT_DIR="$HOME/devops-sentinel"
CONFIG_DIR="$PROJECT_DIR/app/config"
BACKUP_DIR="$PROJECT_DIR/backups"
LOG_FILE="$PROJECT_DIR/app/logs/backup.log"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="sentinel_config_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

if tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$CONFIG_DIR" .; then
    echo "$(date '+%Y-%m-%d &H:%M:%S') [INFO] Backup successfully created: $BACKUP_NAME" >> "$LOG_FILE"
    echo "Backup created: $BACKUP_NAME"
else
    echo "$(date '+%Y-%m-%d &H:%M:%S') [ERROR] Failed to create backup!" >> "$LOG_FILE"
    echo "Error creating backup!"
fi








































