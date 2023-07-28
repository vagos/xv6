#!/bin/env bash

# The directory you are in when running this script will become the /home/xv6 directory inside the docker image.
# You can then run xv6 through qemu from inside the container.

# Don't forget to use "sudo" when running the script.

XV6_SRC="$PWD"
NAME="os"

create_container() 
{
    docker run -it -v "$XV6_SRC":/home/xv6 --name "$NAME" ubuntu
    docker exec -it $NAME bash
}

docker start $NAME && docker exec -it $NAME bash || create_container
