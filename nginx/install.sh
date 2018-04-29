#!/usr/bin/env bash

if ! hash nginx 2>/dev/null; then
  brew install --with-http2 nginx
  brew services start nginx
  ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
fi
