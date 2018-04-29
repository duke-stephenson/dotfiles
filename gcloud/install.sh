#!/usr/bin/env bash

if ! hash gcloud 2>/dev/null; then
  echo "  Installing gcloud for you."
  curl https://sdk.cloud.google.com | bash
  exec -l $SHELL
  gcloud init
fi
