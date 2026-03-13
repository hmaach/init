#!/bin/bash

# Create Applications directory if it doesn't exist
mkdir -p "$HOME/Applications"

# Move to directory
cd "$HOME/Applications" || exit

# Download Discord
wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"

# Extract archive
tar -xvf discord.tar.gz

# Run Discord
./Discord/Discord
