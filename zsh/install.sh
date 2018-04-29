#!/usr/bin/env bash

if ! hash /usr/local/bin/zsh 2>/dev/null; then
  brew install zsh
  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
fi

brew pin zsh
