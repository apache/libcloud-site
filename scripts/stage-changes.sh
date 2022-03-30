#!/usr/bin/env bash
set -e
DESTINATION_BRANCH=$1
git checkout "${DESTINATION_BRANCH}"
git add output
git commit -m "Re-generate website."
