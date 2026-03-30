#!/bin/bash

PACKAGE="python3"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE | head -1
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3) echo "Python: simple and powerful programming language" ;;
    git) echo "Git: version control system" ;;
    vlc) echo "VLC: media player" ;;
    *) echo "Unknown package" ;;
esac
