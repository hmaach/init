#!/usr/bin/env zsh

BIN_NAME="$1"


BIN_PATH="$(command -v $BIN_NAME 2>/dev/null)"

if [[ -z "$BIN_PATH" ]]; then
  for dir in ~/bin ~/.local/bin ~/Downloads ~/Desktop; do
    if [[ -x "$dir/$BIN_NAME" ]]; then
      BIN_PATH="$dir/$BIN_NAME"
      break
    fi
  done
fi

if [[ -z "$BIN_PATH" ]]; then
  echo "❌ Binary '$BIN_NAME' not found. Put it in PATH or common dirs."
  exit 1
fi

mkdir -p ~/.config/autostart

cat > ~/.config/autostart/clipboard.desktop <<EOF
[Desktop Entry]
Type=Application
Exec=$BIN_PATH
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Clipboard
Comment=Start clipboard binary
EOF

echo "✅ Autostart set for: $BIN_PATH"