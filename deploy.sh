#!/bin/bash

set -e

# run the command
curl -k -L -H 'Content-Type: application/json' -X POST -d '{"query": "query {hello}"}' https://localhost/graphql