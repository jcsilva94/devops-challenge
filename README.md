# Devops Challenge
The aim of this challenge is to spin up a backend on `localhost` that exposes a GraphQL query that returns a json `{"hello": "world"}`.

It listens to http and https, although I didn't manage to pull off the http->https redirection.

## Pre-requisites
Docker is assumed to be installed in wherever this is launched. Should work on both Linux and Windows.

If you don't have docker installed please go [here](https://www.docker.com/products/docker-desktop/) and install whatever version is suitable for your OS.

## Usage

**IMPORTANT** Don't forget to install the certificate `ca.crt` on your machine, or it won't be trusted and thus won't even try to send HTTPS requests through `curl`

The launch script for deploying the containers and executing the `curl` commands is `deploy.ps1`, which is written in Powershell. If you are on Linux, make sure you have Powershell installed, should work for version `5.x` and `7.x`.

For Linux a simple `chmod +x deploy.ps1` will allow for script execution, but in Windows you will have to change the script execution policy in your system, which is by default disabled, for security reasons. To do so, open a Powershell admin terminal and paste `Set-ExecutionPolicy unrestricted`, and when asked say yes.

Once everything is in order, execute the script on a Powershell terminal.
```
.\deploy.ps1
```