#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        echo "Checking $DIR"
        ls -ld $DIR
        du -sh $DIR 2>/dev/null
        echo "----------------------"
    else
        echo "$DIR does not exist"
    fi
done
