# Shiny 
Self-hosting of Shiny Apps with Shiny Server Pro Docker setup

## About

These are the Docker Compose files for a Shiny Server Pro. It includes:
| Docker Image        | Description           | Build status  |
| ------------- |-------------|:-----:|
| [`mapic/shiny-server-pro`](https://github.com/mapic/shiny-server-pro.docker)                              | Shiny Server Pro 1.5.10 running on Ubuntu 16.04       | [![Build Status](https://travis-ci.org/mapic/shiny-nginx.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-nginx.docker) |
| [`mapic/shiny-floating-license-server`](https://github.com/mapic/shiny-floating-license-server.docker)    | Shiny Floating License Server                         | [![Build Status](https://travis-ci.org/mapic/shiny-floating-license-server.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-floating-license-server.docker) |
| [`mapic/shiny-auth0`](https://github.com/mapic/shiny-auth0)                                               | Multi-factor authentication with Auth0                | [![Build Status](https://travis-ci.org/mapic/shiny-auth0.svg?branch=master)](https://travis-ci.org/mapic/shiny-auth0) |
| [`mapic/shiny-nginx`](https://github.com/mapic/shiny-nginx.docker)                                        | NginX Reverse-Proxy with SSL                          | [![Build Status](https://travis-ci.org/mapic/shiny-nginx.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-nginx.docker) |
| [`mapic/sftp`](https://github.com/mapic/sftp)                                                             | Secure FTP for uploading of Shiny apps                | |


Please see the [wiki](https://github.com/mapic/shiny/wiki) for more information.

## Install

```bash
git clone https://github.com/mapic/shiny.git
cd shiny

```

## Configure

#### Configure Shiny
Edit the `config/shiny-server.conf`. See http://docs.rstudio.com/shiny-server/#configuration-settings for details on configuration settings.

#### Configure NginX
Edit the `config/nginx.conf` and `config/nginx.certbot.conf` and replace the `server_name` values with your domain.

#### Configure Auth0
Edit the `config/auth0.env` file (copy it from the default `auth0.env.default` file first).

That's it!

## Run

### Start Floating License Server
In order for the Shiny Server Pro server to work, you need to have a running floating license server. Please see https://github.com/mapic/shiny-floating-license-server.docker for easy install.

### Start server

```bash
# start server
bash start-shiny.sh
```

### Stop server
```bash
# stop server
bash stop-shiny.sh
# (use ctrl-c to exit logs and keep containers running)
```

### Show logs
```bash
# show logs
docker-compose logs -f -t
# (use ctrl-c to exit logs and keep containers running)
```

### Show running Docker containers
```bash
# show running docker containers
docker ps
```
