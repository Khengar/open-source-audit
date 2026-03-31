#!/bin/bash

echo "=================================="
echo "          LOG ANALYZER            "
echo "=================================="
echo "Scanning the last 200 system log entries for errors..."
echo ""

journalctl -n 200 --no-pager | grep -iE "error|failed" | tail -n 5

echo ""
echo "=================================="
echo "[ DONE ] Log analysis complete."
