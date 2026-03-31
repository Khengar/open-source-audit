#!/bin/bash

echo "=================================="
echo "      FOSS PACKAGE INSPECTOR      "
echo "=================================="

# Define the FOSS packages to check
PACKAGES=("httpd" "git" "curl" "wget")

for pkg in "${PACKAGES[@]}"; do
    if rpm -q "$pkg" &> /dev/null; then
        echo "[ INSTALLED ] $pkg"
    else
        echo "[ MISSING ]   $pkg"
    fi
done
echo "=================================="
