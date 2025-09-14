#!/bin/bash

# Development script for Windows bash terminal
# This script properly starts the Electron application

echo "Starting Pinokio development server..."

# Use Windows-compatible path for electron executable
if [ -f "./node_modules/.bin/electron.cmd" ]; then
    # Use .cmd version for Windows
    ./node_modules/.bin/electron.cmd .
elif [ -f "./node_modules/.bin/electron" ]; then
    # Use regular version if available
    ./node_modules/.bin/electron .
else
    echo "Error: Electron executable not found in node_modules/.bin/"
    echo "Please run 'npm install' first"
    exit 1
fi