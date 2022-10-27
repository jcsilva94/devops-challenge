
# Build the docker image
docker build -t simple-backend:dev . &>/dev/null

# Run the containers
mkdir -p nginx/cache &>/dev/null
ni nginx/error.log &>/dev/null

docker compose up -d &>/dev/

# run the command
echo "Request to ssl"
curl -k -L -H 'Content-Type: application/json' -X POST -d '{"query": "query {hello}"}' https://localhost/graphql | jq -r .data
echo "Request to http"
curl -k -L -H 'Content-Type: application/json' -X POST -d '{"query": "query {hello}"}' http://localhost/graphql | jq -r .data