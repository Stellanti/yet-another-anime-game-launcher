#!/bin/bash

# This script downloads a native ARM version of aria2 for Apple Silicon Macs

echo "Downloading native ARM version of aria2 for Apple Silicon..."

# Create directory for ARM version of aria2
mkdir -p sidecar/aria2-arm64

# Check if Homebrew is installed
if command -v brew &> /dev/null; then
    echo "Homebrew found, checking for aria2..."
    
    # Check if aria2 is installed
    if brew list aria2 &> /dev/null; then
        echo "aria2 is already installed via Homebrew"
        ARIA2_PATH=$(which aria2c)
    else
        echo "Installing aria2 via Homebrew..."
        brew install aria2
        ARIA2_PATH=$(which aria2c)
    fi
    
    # Copy aria2c to our directory
    cp "$ARIA2_PATH" sidecar/aria2-arm64/
    
    # Copy license if available
    ARIA2_PREFIX=$(brew --prefix aria2)
    if [ -f "$ARIA2_PREFIX/LICENSE.txt" ]; then
        cp "$ARIA2_PREFIX/LICENSE.txt" sidecar/aria2-arm64/
    elif [ -f "$ARIA2_PREFIX/share/doc/aria2/LICENSE.txt" ]; then
        cp "$ARIA2_PREFIX/share/doc/aria2/LICENSE.txt" sidecar/aria2-arm64/
    else
        echo "License file not found, creating placeholder..."
        echo "aria2 is licensed under GPL-2.0. See https://github.com/aria2/aria2" > sidecar/aria2-arm64/LICENSE.txt
    fi
    
    echo "Native ARM version of aria2 has been copied to sidecar/aria2-arm64/"
else
    echo "Homebrew not found, downloading aria2 binary directly..."
    
    # Try to download a pre-compiled ARM binary
    # Note: This is a placeholder URL - you would need to find or build an actual ARM binary
    ARIA2_URL="https://github.com/aria2/aria2/releases/download/release-1.37.0/aria2-1.37.0.tar.bz2"
    
    echo "Warning: This script currently doesn't have a direct source for ARM binaries."
    echo "Please install aria2 via Homebrew instead:"
    echo "  brew install aria2"
    echo ""
    echo "Then run this script again."
    exit 1
fi

echo "Done! You can now build Yaagl with native ARM support." 