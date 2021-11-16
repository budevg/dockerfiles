#!/bin/bash

set -x
zcat vpn.tar.gz | docker import - aws-vpn
docker run --rm  -v `pwd`/vpn.conf:/vpn.conf:rw --device=/dev/net/tun:/dev/net/tun --cap-add NET_ADMIN --network=host -it aws-vpn /entrypoint.sh
