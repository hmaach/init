#!/usr/bin/env zsh

set -e

INSTALL_DIR="$HOME/.local/bin"
MKCERT_REPO="https://api.github.com/repos/FiloSottile/mkcert/releases/latest"

echo "Detecting platform..."

OS="$(uname | tr '[:upper:]' '[:lower:]')"
ARCH="$(uname -m)"

case "$ARCH" in
  x86_64) ARCH="amd64" ;;
  aarch64|arm64) ARCH="arm64" ;;
  *) echo "Unsupported architecture: $ARCH"; exit 1 ;;
esac

case "$OS" in
  linux) FILE="mkcert-v*-linux-$ARCH" ;;
  darwin) FILE="mkcert-v*-darwin-$ARCH" ;;
  *) echo "Unsupported OS: $OS"; exit 1 ;;
esac

echo "Creating install directory..."
mkdir -p "$INSTALL_DIR"

echo "Fetching latest mkcert release URL..."
DOWNLOAD_URL=$(curl -s $MKCERT_REPO | grep browser_download_url | grep "$OS-$ARCH\"" | cut -d '"' -f 4)

if [[ -z "$DOWNLOAD_URL" ]]; then
  echo "Could not find mkcert binary for $OS-$ARCH"
  exit 1
fi

echo "Downloading mkcert..."
curl -L "$DOWNLOAD_URL" -o "$INSTALL_DIR/mkcert"

chmod +x "$INSTALL_DIR/mkcert"

echo "mkcert installed to $INSTALL_DIR/mkcert"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo ""
  echo "Add this to your ~/.zshrc:"
  echo 'export PATH="$HOME/.local/bin:$PATH"'
fi

echo ""
echo "Verify installation:"
echo "mkcert -install"
