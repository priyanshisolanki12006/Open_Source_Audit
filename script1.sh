#!/bin/bash

# Script 1: System Identity Report

echo "===== System Identity ====="
echo "User: $(whoami)"
echo "Home Directory: $HOME"
echo "Kernel Version: $(uname -r)"
echo "Date & Time: $(date)"
echo "Uptime: $(uptime -p)"
echo "Distro: $(lsb_release -d | cut -f2)"
echo "License: GNU GPL"
