#!/bin/bash

echo "=================================="
echo "        DISK SPACE AUDITOR        "
echo "=================================="
echo "Checking top 5 filesystems..."
echo ""
df -h | head -n 6
echo ""
echo "=================================="
# Get just the percentage of the root partition
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt 80 ]; then
    echo "[ WARNING ] Root partition is over 80% full! ($USAGE%)"
else
    echo "[ OK ] Root partition usage is healthy at $USAGE%."
fi
echo "=================================="
