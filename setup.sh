#!/bin/bash

echo "Starting setup..."

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install all apps from Brewfile
echo "Installing packages..."
brew bundle --file=Brewfile

# Clone dotfiles repository if not already present
DOTFILES_DIR="$HOME/.dotfiles"
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Cloning dotfiles..."
    git clone https://github.com/tonitienda/dotenv.git "$DOTFILES_DIR"
fi

# Use GNU Stow to create symlinks
echo "Setting up dotfiles..."
cd "$DOTFILES_DIR"
stow nvim tmux yabai skhd alacritty

# macOS Settings Tweaks
echo "Applying macOS settings..."
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # Fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Enable Yabai & skhd
echo "Starting Yabai & skhd..."
brew services start yabai
brew services start skhd

echo "Setup complete! Restart your terminal for changes to take effect."
