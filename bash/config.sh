#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREENDREAM_DIR="$(dirname "$SCRIPT_DIR")"

add_path() {
    local dir="$1"
    if [[ ":$PATH:" != *":$dir:"* ]]; then
        export PATH="$PATH:$dir"
    fi
}

remove_path() {
    local dir="$1"
    PATH=$(echo "$PATH" | tr ':' '\n' | grep -v "^$dir$" | tr '\n' ':' | sed 's/:$//')
    export PATH
}

# Persist to ~/.bashrc if not already present
BASHRC="$HOME/.bashrc"
if ! grep -qF "GreenDream" "$BASHRC" 2>/dev/null; then
    echo "export PATH=\"\$PATH:$GREENDREAM_DIR/bash\"" >> "$BASHRC"
    echo "Added GreenDream/bash to PATH in $BASHRC"
else
    echo "GreenDream/bash is already in $BASHRC"
fi

add_path "$GREENDREAM_DIR/bash"
echo "GreenDream/bash is active in this session: $GREENDREAM_DIR/bash"
