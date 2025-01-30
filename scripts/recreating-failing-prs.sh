#!/bin/bash

gh search prs --repo="${REPO_ORG}/${REPO_NAME}" \
 --state open \
 --author "app/dependabot" \
 --json "url" --jq ".[] | .url" | while read -r URL; do
    if gh pr checks "$URL" --json workflow,state | jq '.[] | select(.workflow == "") | .state' | grep -q FAILURE; then
        gh pr comment -b "@dependabot recreate" $URL
    fi
done
