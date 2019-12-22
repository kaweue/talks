#!/usr/bin/env bash
# START OMIT
docker container rm -f $(docker ps -aq)
docker image rm $(docker image ls -q)
# END OMIT