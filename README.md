# Shiny Server
Self-hosting of Shiny Apps with Shiny Server Pro Docker setup

Please see the [wiki](https://github.com/mapic/shiny/wiki) for more information.

| Docker Image        | Description           | Build status  |
| ------------- |-------------|:-----:|
| [`mapic/shiny-server-pro`](https://github.com/mapic/shiny-server-pro.docker)                              | Shiny Server Pro 1.5.10 running on Ubuntu 16.04       | [![Build Status](https://travis-ci.org/mapic/shiny-server-pro.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-server-pro.docker) |
| [`mapic/shiny-floating-license-server`](https://github.com/mapic/shiny-floating-license-server.docker)    | Shiny Floating License Server                         | [![Build Status](https://travis-ci.org/mapic/shiny-floating-license-server.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-floating-license-server.docker) |
| [`mapic/shiny-auth0`](https://github.com/mapic/shiny-auth0)                                               | Multi-factor authentication with Auth0                | [![Build Status](https://travis-ci.org/mapic/shiny-auth0.svg?branch=master)](https://travis-ci.org/mapic/shiny-auth0) |
| [`mapic/shiny-nginx`](https://github.com/mapic/shiny-nginx.docker)                                        | NginX Reverse-Proxy with SSL                          | [![Build Status](https://travis-ci.org/mapic/shiny-nginx.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-nginx.docker) |
| [`mapic/sftp`](https://github.com/mapic/sftp)                                                             | Secure FTP for uploading of Shiny apps                | [![Build Status](https://travis-ci.org/mapic/sftp.docker.svg?branch=master)](https://travis-ci.org/mapic/sftp.docker) |


## Install & Configure

### Download repo
```bash
git clone https://github.com/mapic/shiny.git
cd shiny

```

### Configure NginX
Edit the `config/nginx.conf` and `config/nginx.certbot.conf` and replace the `server_name` values with your domain.

### Configure Auth0
```bash
# copy the template 
cd config
cp auth0.env.default auth0.env
```
Then add Auth0 settings to the `config/auth0.env` file. See the [wiki](https://github.com/mapic/shiny/wiki/Auth0-Configuration) for more information on Auth0 settings.

### Configure Shiny
Optionally edit the `config/shiny-server.conf`. Defaults will work, but see the [offical documentation](http://docs.rstudio.com/shiny-server/#configuration-settings) for details on configuration settings.


## Start & Stop

### 1. Start Floating License Server
In order for the Shiny Server Pro server to work, you need to have a running floating license server. Please see https://github.com/mapic/shiny-floating-license-server.docker for easy install.

### 2. Start Shiny Server Pros

```bash
# start server
bash start-shiny.sh
```

### 3. Show logs
```bash
# show logs
docker-compose logs -f -t
# (use ctrl-c to exit logs and keep containers running)
```

### 4. Show running Docker containers
```bash
# show running docker containers
docker ps
```

### 5. Stop server
```bash
# stop server
bash stop-shiny.sh
# (use ctrl-c to exit logs and keep containers running)
```



## Versions

| Program               | Version | Release Date | Changelog | 
| -------               | ------- | ------------ | --------- |
| R                     | 3.4.4   | 2018-03-15   | _["Someone To Lean On"](https://stat.ethz.ch/pipermail/r-announce/2018/000626.html)_ |
| Shiny Server (Pro)    | 1.5.10  | 2018-09-20   | [PRO](https://support.rstudio.com/hc/en-us/articles/215642837-Shiny-Server-Pro-Release-History) / [OS](https://github.com/rstudio/shiny-server/blob/master/NEWS) |
| Ubuntu                | 16.04   | 2018-08-03   | [16.04.3](https://wiki.ubuntu.com/XenialXerus/ReleaseNotes/ChangeSummary/16.04.3) |


