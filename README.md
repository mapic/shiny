# Shiny Server
Self-hosting of Shiny Apps with Shiny Server Pro Docker setup

Please see the [wiki](https://github.com/mapic/shiny/wiki) for more information.

### Docker Images

| Docker Image        | Description           | Build status  |
| ------------- |-------------|:-----:|
| [`mapic/shiny-server`](https://github.com/mapic/shiny-server.docker)    | Shiny Server 1.5.9                         | [![Build Status](https://travis-ci.org/mapic/shiny-server.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-server.docker) |
| [`mapic/shiny-auth0`](https://github.com/mapic/shiny-auth0)             | Multi-factor authentication with Auth0     | [![Build Status](https://travis-ci.org/mapic/shiny-auth0.svg?branch=master)](https://travis-ci.org/mapic/shiny-auth0) |
| [`mapic/shiny-nginx`](https://github.com/mapic/shiny-nginx.docker)      | NginX Reverse-Proxy with SSL               | [![Build Status](https://travis-ci.org/mapic/shiny-nginx.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-nginx.docker) |
| [`mapic/sftp`](https://github.com/mapic/sftp)                           | Secure FTP for uploading of Shiny apps     | [![Build Status](https://travis-ci.org/mapic/sftp.docker.svg?branch=master)](https://travis-ci.org/mapic/sftp.docker) |


### Versions

| Program               | Version | Release Date | Changelog | 
| -------               | ------- | ------------ | --------- |
| Shiny Server          | 1.5.9   | 2018-09-12   | [Pro](https://support.rstudio.com/hc/en-us/articles/215642837-Shiny-Server-Pro-Release-History) / [Open Source](https://github.com/rstudio/shiny-server/blob/master/NEWS) |
| R                     | 3.5.1   | 2018-07-02   | _["Feather Spray"](https://stat.ethz.ch/pipermail/r-announce/2018/000626.html)_ |
| Ubuntu                | 16.04   | 2018-08-03   | [16.04.3](https://wiki.ubuntu.com/XenialXerus/ReleaseNotes/ChangeSummary/16.04.3) |



## Install

### Download repo
```bash
git clone https://github.com/mapic/shiny.git
cd shiny

```

## Configure
### Configure NginX
Edit the `config/nginx.conf` and `config/nginx.certbot.conf` and replace the `server_name` values with your domain.

### Configure Auth0
```bash
# copy the template 
cd config
cp auth0.env.default auth0.env
```
Then add Auth0 settings to the `config/auth0.env` file. See the [wiki](https://github.com/mapic/shiny/wiki/Auth0-Configuration) for more information on Auth0 settings.

### Configure Shiny Server
Optionally edit the `config/shiny-server.conf`. Defaults will work, but see the [offical documentation](http://docs.rstudio.com/shiny-server/#configuration-settings) for details on configuration settings.


## Start Shiny Server

```bash
# start server
bash start-shiny.sh
```

### Show logs
```bash
# show logs
docker-compose logs -f -t
# (use ctrl-c to exit logs and keep containers running)
```

### 5. Stop server
```bash
# stop server
bash stop-shiny.sh
# (use ctrl-c to exit logs and keep containers running)
```


