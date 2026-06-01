#!/usr/bin/env bash

if [[ "$OSTYPE" == "msys"* ]] || [[ "$OSTYPE" == "cygwin"* ]] || command -v wt.exe &>/dev/null; then
    wt.exe &
elif command -v gnome-terminal &>/dev/null; then
    gnome-terminal &
elif command -v xterm &>/dev/null; then
    xterm &
elif command -v konsole &>/dev/null; then
    konsole &
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open -a Terminal
fi
