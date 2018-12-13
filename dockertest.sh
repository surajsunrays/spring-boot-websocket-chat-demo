#!/bin/bash
#This script is used to check the various states of docker container

#Checking the already runnung container
if [ $(docker inspect -f '{{.State.Running}}' spring-boot-websocket)="false" ]
then
    echo "-----Container Running-------------";
    echo "-----Stopping the container---------";
    docker container stop spring-boot-websocket;
    echo "Now Cleaning the Existing container resources......";
    docker container rm -f spring-boot-websocket
    echo "=--   Now Launching the New Container -----=";
    #Starting the new Container Here
    docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app;
    
elif [ $(docker inspect -f '{{.State.Exited}}' spring-boot-websocket)="false" ]
then
    echo "Container found in exited state";
    echo "Now Cleaning the Existing container resources......";
    docker container rm -f spring-boot-websocket
    echo "=--   Now Launching the New Container -----=";
    #Starting the new Container Here
    docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app;
else
    #Starting the new Container Here
    echo "------------Creating the new Container--------------"
    docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app;
fi
echo "--**-----**------ Operation Complete------**-----**--------";