#!/bin/bash

set -euo pipefail

LOG_FILE="$HOME/devops-sentinel/app/logs/sentinel_master.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

mkdir -p "$(dirname "$LOG_FILE")"

echo "[$TIMESTAMP] [INFO] Sentinel Health Check Started" | tee -a "$LOG_FILE"

# 1. Disk Check
echo "[$TIMESTAMP] [INFO] Running Disk Check..." | tee -a "$LOG_FILE"
df -h | grep '^/dev/' | tee -a "$LOG_FILE"

# 2. CPU Check
if [ -f "$HOME/devops-sentinel/scripts/cpu-check.sh" ]; then
    "$HOME/devops-sentinel/scripts/cpu-check.sh" | tee -a "$LOG_FILE"
fi

# 3. Process Check
if [ -f "$HOME/devops-sentinel/scripts/process-check.sh" ]; then
    "$HOME/devops-sentinel/scripts/process-check.sh" | tee -a "$LOG_FILE"
fi

# 4. SSH Health Check
if [ -f "$HOME/devops-sentinel/scripts/ssh-healthcheck.sh" ]; then
    "$HOME/devops-sentinel/scripts/ssh-healthcheck.sh" | tee -a "$LOG_FILE"
fi

ENVIRONMENT="production"
echo "[$TIMESTAMP] [INFO] Environment: $ENVIRONMENT" | tee -a "$LOG_FILE"
echo "[$TIMESTAMP] [INFO] Sentinel Health Check Completed successfully" | tee -a "$LOG_FILE"

