#!/usr/bin/env bash
set -euo pipefail

instructions='`$ key='your-xhr-key' ./unblocked.sh`'
echo "load the xhr-api-key with $instructions"

if [[ -z ${key:-} ]]; then
  echo "key not loaded, did you run the script like: $instructions";
  exit 1
fi

echo 'make a request that is unblocked via xhr.dev'

set +e
set -x
curl --fail \
  -H "x-xhr-managed-proxy: true" \
  -H "x-xhr-api-key: $key" \
  --cacert ./xhrdev.pem \
  --proxy https://magic.xhr.dev \
  https://app.gusto.com/login

echo "status code: $?"
