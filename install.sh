#!/usr/bin/env zsh

cp "$HOME/.zshrc" "$HOME/.zshrc.pre-shell-startup"
cp "./default.zshrc" "$HOME/.zshrc"
touch "$ZSH_CUSTOM/setup.zsh"
cp "./setup.zsh" "$ZSH_CUSTOM/setup.zsh"

source "$HOME/.zshrc"