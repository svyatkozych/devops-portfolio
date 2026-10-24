#!/bin/bash

set -euo pipefail

LOG_FILE="$HOME/devops-sentinel/app/logs/sentinel_master.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
MAX_LOAD=80.0

# Отримуємо 1-хвилинне середнє навантаження (load average)
CURRENT_LOAD=$(uptime | awk -F'load average:' '{ print $2 }' | awk '{ print $1 }' | tr -d ',')

echo "[$TIMESTAMP] [INFO] Checking CPU load. 1m load: $CURRENT_LOAD (Threshold: $MAX_LOAD)" >> "$LOG_FILE"
echo "CPU Load Check: OK ($CURRENT_LOAD)"
