# test-rails
Example web app built with ruby on rails

## Requirements

* Install `docker` and `docker-compose`
* Sign up for [Resurface Pilot Edition](https://resurface.io/pilot-edition) access

## Ports Used


* 4002 - Resurface API Explorer
* 4001 - Resurface microservice
* 4000 - Trino database UI

## Deploy Locally

```
make start     # rebuild and start containers
make ping      # make simple ping request
make bash      # open shell session
make logs      # follow container logs
make stop      # halt and remove containers
```
