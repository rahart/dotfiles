#!/bin/env bash

# Core things
sudo pacman -S --noconfirm zsh fzf ripgrep exa zoxide
# Extras
sudo pacman -S --noconfirm waybar hyprshot hyprpaper 

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~/.zshrc

