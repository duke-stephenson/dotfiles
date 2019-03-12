#!/usr/bin/env bash

if [[ ! -d "$HOME/mac/themes" ]]; then
 mkdir -p "${HOME}/Library/Application Support/Code/User"
fi

if [[ ! -f /Users/john/Library/Application\ Support/Code/User/keybindings.json ]]; then
  brew cask install visual-studio-code
  ln -s /Users/john/.dotfiles/vscode/settings.json /Users/john/Library/Application\ Support/Code/User/settings.json
  ln -s /Users/john/.dotfiles/vscode/keybindings.json /Users/john/Library/Application\ Support/Code/User/keybindings.json
fi
