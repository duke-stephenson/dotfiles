#!/usr/bin/env bash


if test ! $(which gcloud)
then
  echo "  Installing gcloud for you."
  curl https://sdk.cloud.google.com | bash
fi

exit 0
