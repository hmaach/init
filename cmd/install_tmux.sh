#!/usr/bin/env sh
set -e

INSTALL_DIR="$HOME/bin"

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

# Add to PATH if missing
if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
    echo "Added $INSTALL_DIR to PATH in ~/.bashrc"
fi

echo "Reload your shell or run: source ~/.bashrc"
echo "Then run: tmux"
