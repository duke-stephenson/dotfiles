#!/usr/bin/env bash

if [ ! -f /Users/john/Library/Application\ Support/Code/User/keybindings.json ]; then
  brew cask install visual-studio-code
  ln -s /Users/john/.dotfiles/vscode/settings.json /Users/john/Library/Application\ Support/Code/User/settings.json
  ln -s /Users/john/.dotfiles/vscode/keybindings.json /Users/john/Library/Application\ Support/Code/User/keybindings.json
  ln -s /Users/john/.dotfiles/vscode/snippets /Users/john/Library/Application\ Support/Code/User/snippets
fi
