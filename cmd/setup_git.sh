#!/bin/zsh

# Setup Git configuration interactively

# Set credential helper
git config --global credential.helper store

# Prompt for Git username
echo "Enter your Git username:"
read -r git_name

# Prompt for Git email
echo "Enter your Git email:"
read -r git_email

# Configure Git with user input
git config --global user.email "$git_email"
git config --global user.name "$git_name"

echo "Git configuration completed!"
echo "  Username: $git_name"
echo "  Email: $git_email"
