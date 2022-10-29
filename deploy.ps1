# Build the docker image
docker build -t simple-backend:dev . | out-null

# Run the containers
mkdir -p nginx/cache | out-null
ni nginx/error.log | out-null

docker compose up -d | out-null

# run the command
Write-Host "Request to ssl"
curl -Uri https://localhost/graphql -Body '{"query": "query { hello }"}' -ContentType "application/json" -Method Post
Write-Host "Request to http"
curl -Uri http://localhost/graphql -Body '{"query": "query { hello }"}' -ContentType "application/json" -Method Post
