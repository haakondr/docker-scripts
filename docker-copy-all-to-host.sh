#!/usr/bin/bash

for image_name in $(docker images | awk {'print $1'}); do
    if [ $image_name != "REPOSITORY" ] && [ $image_name != "<none>" ] ;
        then
            echo "copying image $image_name to host $1"
            docker save $image_name | bzip2 | ssh $1 'bunzip2 | docker load' &
        fi
done 
