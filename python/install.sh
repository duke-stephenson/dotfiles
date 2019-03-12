#!/usr/bin/env bash

if ! hash virtualenv 2>/dev/null; then
  echo "Installing virtualenv"
  pip3 install virtualenv virtualenvwrapper
fi

if ! hash pipenv 2>/dev/null; then
  echo "Installing pipenv"
  brew install pipenv
fi

