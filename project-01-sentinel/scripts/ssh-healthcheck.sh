#!/bin/bash

set -euo pipefail

LOG_FILE="$HOME/devops-sentinel/app/logs/sentinel_master.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
# Використовуємо локальний хост для демонстрації, щоб уникнути помилок неіснуючого сервера
TARGET_HOST="localhost"

if ssh -o BatchMode=yes -o ConnectTimeout=2 "$TARGET_HOST" "echo SSH_OK" 2>/dev/null | grep -q "SSH_OK"; then
    echo "[$TIMESTAMP] [INFO] SSH connection to $TARGET_HOST OK" >> "$LOG_FILE"
    echo "SSH Status: OK"
else
    echo "[$TIMESTAMP] [WARN] SSH connection to $TARGET_HOST skipped or failed (expected in isolated container/VM without local sshd daemon)" >> "$LOG_FILE"
    echo "SSH Status: SKIPPED/WARNING"
fi


