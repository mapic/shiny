#!/bin/bash

# check for floating license server
FLOATING_LICENSE_SERVER=$(docker ps --filter "name=shiny-floating-license-server" -q)
if [[ "$FLOATING_LICENSE_SERVER" == "" ]]; then
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    echo ""
    echo -e "${RED}ERROR: ${NC}shiny-floating-license-server is not running!"
    echo ""
    echo "You need to start the Shiny Floating License Server"
    echo " before you can start Shiny Server Pro..."
    echo ""
    echo "Please see https://github.com/mapic/shiny.docker-compose"
    echo " for more information."
    echo ""
    exit 1
fi

# starting server
docker-compose up -d

# show logs
docker-compose logs -f