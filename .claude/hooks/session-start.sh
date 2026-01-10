#!/bin/bash
# SessionStart hook for Claude Code
# Installs necessary dependencies when running in a web/remote session

if [ "$CLAUDE_CODE_REMOTE" = "true" ]; then
    echo "Installing dependencies for Claude Code web session..."
    apt-get update -qq && apt-get install -y liblz4-dev
    echo "Dependencies installed successfully."
fi
