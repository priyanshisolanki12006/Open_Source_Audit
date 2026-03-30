#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=${1:-"/var/log/syslog"}  # Default log file
KEYWORD=${2:-"error"}            # Default keyword
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "======================================="
echo "Log File Analyzer"
echo "Log File: $LOGFILE"
echo "Keyword : $KEYWORD"
echo "Total occurrences: $COUNT"
echo "======================================="
echo "Last 5 occurrences:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
