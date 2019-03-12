#!/usr/bin/env bash

if ! hash nginx 2>/dev/null; then
  brew install nginx
  brew services start nginx
fi
