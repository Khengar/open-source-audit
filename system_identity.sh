#!/bin/bash

echo "=================================="
echo "      SYSTEM IDENTITY REPORT      "
echo "=================================="
echo "Date & Time: $(date)"
echo "Current User: $USER"
echo "OS Info: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"
echo "=================================="
