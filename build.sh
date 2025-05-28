#!/bin/bash
# Build script for HTW Saar thesis template

MAIN_FILE="thesis.tex"

# Check for command line arguments
if [ "$1" == "clean" ]; then
    echo "Cleaning auxiliary files..."
    latexmk -c "$MAIN_FILE"
    exit 0
elif [ "$1" == "once" ]; then
    echo "Building PDF once..."
    latexmk -pdf "$MAIN_FILE"
    exit 0
fi

# Default: continuous build
echo "Starting continuous build mode. Press Ctrl+C to exit."
echo "Document will automatically rebuild when changes are detected."
latexmk -pdf -pvc "$MAIN_FILE"
