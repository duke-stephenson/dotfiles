#!/usr/bin/env bash

if [ -d "$HOME/mac/themes" ]; then
  echo "Already have solarized-dark"
else
  echo "Downloading solarized-dark terminal"
  mkdir -p ~/mac/themes
  wget https://raw.github.com/altercation/solarized/master/osx-terminal.app-colors-solarized/xterm-256color/Solarized%20Dark%20xterm-256color.terminal -O ~/mac/themes/solarized-dark.terminal
fi
