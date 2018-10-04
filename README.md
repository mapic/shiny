# Shiny Server Pro

## About

These are the Docker Compose files for a Shiny Server Pro. It includes:
- [x] Shiny Server Pro 1.5.9 running on Ubuntu 16.04 (`mapic/shiny-server-pro`)
- [x] Shiny Floating License Server (`mapic/shiny-floating-license-server`)
- [x] Multi-factor authentication with Auth0 (`mapic/shiny-auth0`)
- [x] Reverse-proxying with NginX (`mapic/shiny-nginx`)

Please see the [RStudio Documentation](http://docs.rstudio.com/shiny-server/) for more information.

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
### Start server

```bash
# start server
bash start-shiny-server-pro.sh
```

### Stop server
```bash
# stop server
bash stop-shiny-server-pro.sh
# (use ctrl-c to exit logs and keep containers running)
```

### Show logs
```bash
# show logs
docker-compose logs -f
```

### Show running Docker containers
```bash
# show running docker containers
docker ps
```