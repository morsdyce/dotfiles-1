#!/bin/sh

echo "Setting up your Mac..."

cd ~/.dotfiles || { echo "You must clone dotfiles into ~/.dotfiles"; exit 1; }

# Create a CODE directory
mkdir $HOME/Code

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Set macOS preferences - we will run this last because this will reload the shell
#source .macos
