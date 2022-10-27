# Devops Challenge
The aim of this challenge is to spin up a backend on `localhost` that exposes a GraphQL query that returns a json `{"hello": "world"}`.

It listens to http and https, although I didn't manage to pull off the http->https redirection.

## Pre-requisites
Docker is assumed to be installed in wherever this is launched. Should work on both Linux and Windows.

If you don't have docker installed please go [here](https://www.docker.com/products/docker-desktop/) and install whatever version is suitable for your OS.



## Usage

The launch script for deploying the containers and executing the `curl` commands is `deploy.ps1`, which is written in Powershell. If you are on Linux, make sure you have powershell installed, or alternatively, use the `deploy.sh`

If launching the solution this way, jq is mandatory, which can be found and installed following the documentation on the official page [here](https://stedolan.github.io/jq/download/). It's a tool that parses json responses through command line.

Once everything is setup, make sure you give execute permissions to the `deploy.sh` script located in this folder.
```
chmod +x deploy.sh
```

This may seem obvious but it's always worth a reminder. After that, invoke the script.
```
./deploy.sh
```

### Powershell
To launch this deployment using