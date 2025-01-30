#!/bin/bash

# It’s a healthy habit to check release notes, bug fixes when a
# dependency has changed instead of just blindly approving.

gh search prs --repo="${REPO_ORG}/${REPO_NAME}" \
 --state open \
 --checks success \
 --author "app/dependabot" \
 --json "url" --jq ".[] | .url" | xargs -n 1 -I{} \
   gh pr review {} --approve
