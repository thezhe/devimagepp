#!/usr/bin/env sh
## Strict mode
set -eu
IFS="$(printf "\n\t")"
readonly IFS
# Pass-fail tests
actionlint
