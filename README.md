# Shiny Server Pro

## About

This is the Docker Compose files for a Shiny Server Pro. It includes:
- [x] RStudio Shiny Floating License Server
- [x] Multi-factor authentication with Auth0
- [x] Reverse-proxying with NginX

Please see the [RStudio Documentation](http://docs.rstudio.com/shiny-server/) for more information.

## Install

```bash
git clone https://github.com/mapic/docker.shiny-server-pro.git
cd docker.shiny-server-pro

```

## Configure
1. Start the [Floating License Server](https://github.com/mapic/docker.shiny-floating-license-server)
2. Configure your Shiny Server Pro by editing the [`shiny-server.conf`](https://github.com/mapic/docker.shiny-server-pro/blob/master/shiny-server.conf) file. (Note that if you changed the port of the running Floating License Server, this must be reflected in the [docker-entrypoint.sh](https://github.com/mapic/docker.shiny-server-pro/blob/master/docker-entrypoint.sh#L4) file)
3. Add more pre-installed Shiny packages if you like, by editing the [Dockerfile](https://github.com/mapic/docker.shiny-server-pro/blob/master/Dockerfile#L39)
4. Build the Docker image: 

```bash
bash build.sh
```

## Start Shiny Server Pro
Start the server by running:

```bash
bash start-server.sh
```

This will start the Docker image with the running Shiny Server Pro instance.