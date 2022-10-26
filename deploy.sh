#!/bin/bash

set -e

# run the command
curl -L -H 'Content-Type: application/json' -X POST -d '{"query": "query {hello}"}' http://localhost:8080/graphql | jq -r .data