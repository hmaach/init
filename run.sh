#!/bin/zsh
set -e  

./cmd/setupt_clock.sh
./cmd/setup_git.sh

if ! command -v docker &> /dev/null; then
  echo "🐋 Docker not found — installing..."
  ./cmd/install_docker.sh
else
  echo "✅ Docker already installed."
fi

if ! command -v ng &> /dev/null; then
  echo "⚙️ Angular CLI not found — installing..."
  ./cmd/install_ng.sh
else
  echo "✅ Angular CLI already installed."
fi


source ~/.zshrc

echo "All tasks completed successfully."
