#!/usr/bin/env bash

if ! hash node 2>/dev/null; then
  echo "Installing Node"
  brew install node yarn
fi

#if ! hash nvm 2>/dev/null; then
#  echo "Installing nvm"
#  mkdir -p "${HOME}/.nvm"
#  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
#fi
