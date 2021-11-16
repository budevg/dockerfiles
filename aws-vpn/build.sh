#!/bin/bash

set -x

docker build -t aws-vpn .
docker run --name aws-vpn aws-vpn hostname || true
INSTANCE_ID=`docker ps -af name=aws-vpn -q`
echo $INSTANCE_ID
docker export $INSTANCE_ID | gzip > vpn.tar.gz
docker rm $INSTANCE_ID
