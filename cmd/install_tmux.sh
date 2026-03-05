#!/usr/bin/env sh
set -e

INSTALL_DIR="$HOME/bin"
SHELL_CONFIG="$HOME/.zshrc"  # For Zsh users

echo "Installing tmux locally to $INSTALL_DIR..."

# Create bin directory
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# Download latest AppImage
wget -O tmux.appimage \
https://github.com/nelsonenzo/tmux-appimage/releases/latest/download/tmux.appimage

# Make executable
chmod +x tmux.appimage

# Create symlink
ln -sf "$INSTALL_DIR/tmux.appimage" "$INSTALL_DIR/tmux"

# Add to PATH if missing (for Zsh users)
if ! grep -q "$INSTALL_DIR" "$SHELL_CONFIG"; then
    echo "export PATH=\"$HOME/bin:\$PATH\"" >> "$SHELL_CONFIG"
    echo "Added $INSTALL_DIR to PATH in $SHELL_CONFIG"
fi

echo "Reload your shell or run: source ~/.zshrc"
echo "Then run: tmux"
