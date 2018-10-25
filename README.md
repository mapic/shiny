# Shiny Server
Self-hosting of Shiny Apps with Shiny Server Docker setup. Please see the [wiki](https://github.com/mapic/shiny/wiki) for details.


### Docker Images

| Docker Image        | Description           | Build status  |
| ------------- |-------------|:-----:|
| [`mapic/shiny-server`](https://github.com/mapic/shiny-server.docker)    | Shiny Server 1.5.9                         | [![Build Status](https://travis-ci.org/mapic/shiny-server.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-server.docker) |
| [`mapic/shiny-auth0`](https://github.com/mapic/shiny-auth0)             | Multi-factor authentication with Auth0     | [![Build Status](https://travis-ci.org/mapic/shiny-auth0.svg?branch=master)](https://travis-ci.org/mapic/shiny-auth0) |
| [`mapic/shiny-nginx`](https://github.com/mapic/shiny-nginx.docker)      | NginX Reverse-Proxy with SSL               | [![Build Status](https://travis-ci.org/mapic/shiny-nginx.docker.svg?branch=master)](https://travis-ci.org/mapic/shiny-nginx.docker) |
| [`mapic/sftp`](https://github.com/mapic/sftp)                           | Secure FTP for uploading of Shiny apps     | [![Build Status](https://travis-ci.org/mapic/sftp.svg?branch=master)](https://travis-ci.org/mapic/sftp) |


### Versions

| Program               | Version | Release Date | Changelog | 
| -------               | ------- | ------------ | --------- |
| Shiny Server          | 1.5.9   | 2018-09-12   | [Open Source](https://github.com/rstudio/shiny-server/blob/master/NEWS) |
| R                     | 3.5.1   | 2018-07-02   | _["Feather Spray"](https://stat.ethz.ch/pipermail/r-announce/2018/000626.html)_ |
| Ubuntu                | 16.04   | 2018-08-03   | [xenial](https://wiki.ubuntu.com/XenialXerus/ReleaseNotes/ChangeSummary/16.04.3) |
| NodeJS                | v8.11.3 | 2018-06-12   | [LTS](https://nodejs.org/en/blog/release/v8.11.3/)

#### R packages versions
Please see the [wiki/Versions](https://github.com/mapic/shiny/wiki/Versions) for a list of R package versions.

## Installation

See the [wiki](https://github.com/mapic/shiny/wiki/How-to-setup-a-Shiny-Server-on-Amazon-AWS#install-mapicshiny-repository) for installation instructions.

## Manage Shiny Server

### Start 
```bash
# start server
bash start-shiny.sh
```

### Stop
```bash
# stop server
bash stop-shiny.sh
```

### Show running logs
```bash
# show logs
docker-compose logs -f -t
# (use ctrl-c to exit logs and keep containers running)
```


