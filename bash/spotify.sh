#!/usr/bin/env bash

if command -v spotify &>/dev/null; then
    spotify &
elif command -v spotify.exe &>/dev/null; then
    spotify.exe &
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open -a Spotify
else
    /mnt/c/Users/apors/AppData/Roaming/Spotify/Spotify.exe &
fi
