#!/bin/bash

# POST /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches
# https://docs.github.com/en/enterprise-cloud@latest/rest/actions/workflows?apiVersion=2022-11-28#create-a-workflow-dispatch-event

export YOUR_TOKEN=""

curl -v -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $YOUR_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/kyanny-corp-enterprise-cloud-testing/zd-3284185/actions/workflows/main.yml/dispatches \
  -d '{"ref":"develop"}'
