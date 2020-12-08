#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-netlify-identity-widget.js public

echo "stackbit-build.sh: finished build"
