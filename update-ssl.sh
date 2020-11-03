#!/bin/bash

read -p "Are you sure you want to update SSL certificates? This will lead to downtime for the domain. (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

    # do dangerous stuff
    echo "Stopping Shiny @ cloud.ngi.no..."
    bash stop-shiny.sh
    sleep 5

    echo "Removing old certificates"
    cd ssl 
    FOLDER=old-$(date +%s)
    mkdir $FOLDER
    mv *.pem $FOLDER 
    cd ..
    echo "Starting Shiny @ cloud.ngi.no..."
    bash start-shiny.sh
    
    echo 
    echo "SSL certificates updated. It may take a minute for the domain to back online."
    echo 

fi