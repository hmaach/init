#!/bin/zsh

npm install -g @angular/cli --prefix ~/.local

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc