#!/bin/bash
#This script is used to check the various states of docker container

#Checking the already runnung container
RunningContainer=`docker ps -q -f name=spring-boot-websocket`
ExitedContainer=`docker ps -q -f name=spring-boot-websocket -a`
echo "Showing the Running Container :$RunningContainer"
echo "Showing the Stopped Container :$ExitedContainer"
if [ "$RunningContainer" == "" ]
then
    echo "-------No any Running Container Found------"
    if [ "$ExitedContainer" == "" ]
    then
        echo "Also No any Exited Container"
        #Launching the new Container Here
        docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-websocket-chat-demo
    else
        echo "--------Found the Exited Container-----------"
        echo "Now Cleaning the Existing container resources......";
        docker container rm -f spring-boot-websocket
        echo "=--   Now Launching the New Container -----=";
        #Starting the new Container Here
        docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-websocket-chat-demo
    fi
elif [ "$ExitedContainer" == "" ]
then
        echo "----- No any Exited Container Found -------"
fi
echo "--**-----**------ Operation Complete------**-----**--------";