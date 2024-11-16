#!/usr/bin/env bash
set -euo pipefail

echo 'make a request that gets blocked (403 response)'

set +e
set -x
curl --fail https://app.gusto.com/login

echo "status code: $?"
