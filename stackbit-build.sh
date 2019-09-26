#!/usr/bin/env bash

set -e
set -o pipefail
set -v

if [[ -z "${STACKBIT_API_KEY}" ]]; then
    echo "WARNING: No STACKBIT_API_KEY environment variable set, skipping stackbit-pull"
else
    npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/5d8d22ace1524600124eff92 
fi
hugo