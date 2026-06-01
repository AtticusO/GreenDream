#!/usr/bin/env bash

if command -v notepad.exe &>/dev/null; then
    notepad.exe &
elif command -v gedit &>/dev/null; then
    gedit &
elif command -v nano &>/dev/null; then
    nano
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open -a TextEdit
else
    xdg-open "$(xdg-user-dir DOCUMENTS)" &
fi
