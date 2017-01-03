
if ! command_exists gcloud ; then
  echo "  Installing gcloud for you."
  curl https://sdk.cloud.google.com | bash
fi
