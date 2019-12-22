#!/usr/bin/env bash
# START OMIT
docker build --tag=friendlyhello app
docker run -p 4000:80 friendlyhello
# http://192.168.99.100:4000
# END OMIT
