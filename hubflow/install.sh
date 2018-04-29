#!/usr/bin/env bash

if [ ! -d "$HOME/gitflow" ]; then
  git clone git@github.com:j-walker23/gitflow.git ~/gitflow
  sudo ~/gitflow/install.sh
fi
