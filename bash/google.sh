#!/usr/bin/env bash

URL="${1:-}"

if command -v google-chrome &>/dev/null; then
    google-chrome "$URL" &
elif command -v google-chrome-stable &>/dev/null; then
    google-chrome-stable "$URL" &
elif command -v chromium-browser &>/dev/null; then
    chromium-browser "$URL" &
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open -a "Google Chrome" "$URL"
else
    /mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe "$URL" &
fi
