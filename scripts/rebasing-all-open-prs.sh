#!/bin/bash

gh search prs --repo="${REPO_ORG}/${REPO_NAME}" \
 --state open \
 --author "app/dependabot" \
 --json "url" --jq ".[] | .url" | xargs -n 1 -I{} \
  gh pr comment -b "@dependabot rebase" {}
