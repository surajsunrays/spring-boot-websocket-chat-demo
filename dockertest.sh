#!/bin/bash
#this script is used for checking and deploying the docker container
if [ $(docker inspect -f '{{.State.Running}}' spring-boot-websocket) = "true" ]; then 
echo "The Container is already running " 
echo "Now Stopping the container to Create the latest" 
sudo docker container stop spring-boot-websocket
echo "Now Removing the container from docker to release resources---"
sudo docker container rm -f spring-boot-websocket
echo "----- Now Reinstalling the container ----- "
sudo docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app
echo "---- Container running and listening at port 7070--------"
echo "-----------OPERATION COMPLETE----"; 
else echo "No Such Container Running"
if [ $(docker inspect -f '{{.State.Exited}}' spring-boot-websocket) = "true" ];then
echo "------- Found One Exited Container -----------"
sudo docker container rm -f spring-boot-websocket;
echo "----- Exited container removed------"; 
else 
echo "Nothing Found"; fi
echo "----------------Creating the new Container-------------"
sudo docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app; fi

echo "----------------------Operation finish------------------"