#!/bin/env zsh

cp .zshrc ~/.zshrc
source ~/.zshrc

rm -rf ~/.config/nvim
cp -r nvim ~/.config/nvim
rm -rf ~/.config/tmux
cp -r tmux ~/.config/tmux

