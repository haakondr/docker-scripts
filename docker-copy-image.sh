#!/usr/bin/bash

docker save $1 | bzip2 | ssh $2 'bunzip2 | docker load'
