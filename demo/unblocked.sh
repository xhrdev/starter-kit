#!/usr/bin/env bash
set -euo pipefail

instructions='`$ key='your-xhr-key' ./unblocked.sh`'
echo "load the xhr-api-key with $instructions"

if [[ -z $key ]];
  echo "key not loaded, did you run the script like: $instructions";
fi

echo 'make a request that is unblocked via xhr.dev'

set +e
set -x
curl --fail \
  -k \
  -H "x-xhr-managed-proxy: true" \
  -H "x-xhr-api-key: $key" \
  --proxy https://proxy.prod.engineering.xhr.dev \
  https://app.gusto.com/login

echo "status code: $?"
