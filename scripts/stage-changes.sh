#!/usr/bin/env bash
set -e

DESTINATION_BRANCH=$1

if [ "${DESTINATION_BRANCH}" != "asf-site" ] && [ "${DESTINATION_BRANCH}" != "asf-staging" ]; then
    echo "Usage: $0 <branch>"
    echo ""
    echo "For example:"
    echo "  $0 asf-site for production branch"
    echo "  $0 asf-staging for staging branch"
    exit 2
fi

TEMP_OUTPUT_DIRECTORY=$(mktemp -d -t libcloud-site-output-XXXXX)
trap "rm -rf \"${TEMP_OUTPUT_DIRECTORY}\"" EXIT

echo $TEMP_OUTPUT_DIRECTORY
mv output/ "${TEMP_OUTPUT_DIRECTORY}"

git checkout "${DESTINATION_BRANCH}"
cp -r ${TEMP_OUTPUT_DIRECTORY}/output/* output/
git add output
git commit -m "Re-generate website."
