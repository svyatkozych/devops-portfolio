#!/usr/bin/env bash
set -euo pipefail

TARGET_URL=${1:-"http://localhost:5000/health"}
MAX_RETRIES=5
SLEEP_TIME=2

echo "🔍 Starting Smoke Test against: ${TARGET_URL}"

for i in $(seq 1 $MAX_RETRIES); do
    if curl -s -f "$TARGET_URL" | grep -q "healthy"; then
        echo "✅ Smoke test PASSED: Service is healthy!"
        exit 0
    fi
    echo "⚠️ Attempt $i failed. Retrying in ${SLEEP_TIME}s..."
    sleep $SLEEP_TIME
done

echo "❌ Smoke test FAILED: Service is unhealthy! Triggering Rollback/Release Guard block."
exit 1
