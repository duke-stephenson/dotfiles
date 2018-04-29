#!/usr/bin/env bash

if ! hash node 2>/dev/null; then
  brew install node yarn
fi
