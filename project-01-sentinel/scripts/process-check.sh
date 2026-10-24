#!/bin/bash

TARGET_PROCESS="systemd"
LOG_FILE="$HOME/devops-sentinel/app/logs/monitor.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if pgrep -x "$TARGET_PROCESS" > /dev/null; then
	echo "$TIMESTAMP [INFO] Process '$TARGET_PROCESS' is running successfully." >> "$LOG_FILE"
	echo "Status: OK ($TARGET_PROCESS is running)"
else
	echo "$TIMESTAMP [ERROR] Process '$TARGET_PROCESS' is NOT running." >> "$LOG_FILE"
	echo "Status: FAILED"
	exit 1
fi
