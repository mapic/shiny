# Shiny Server Pro

[![SSL Rating](https://sslbadge.org/?domain=cloud.ngi.no)](https://www.ssllabs.com/ssltest/analyze.html?d=cloud.ngi.no)

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
docker-compose logs -f
```

### Show running Docker containers
```bash
docker ps
```