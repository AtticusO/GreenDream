#!/usr/bin/env bash

INPUT="${1:-}"

case "$INPUT" in
    netflix)   URL="https://netflix.com" ;;
    peacock)  URL="https://peacock.com" ;;
    paramount) URL="https://paramount.com" ;;
    disney)    URL="https://disneyplus.com" ;;
    hbo)       URL="https://hbo.com" ;;
    *)         URL="$INPUT" ;;
esac

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
