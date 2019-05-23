FROM ubuntu:16.04

RUN set -x \
    && apt update \
    && apt install -y openjdk-8-jre icedtea-plugin x11-utils

ADD ["exception.sites", "/root/.java/deployment/security/exception.sites"]
# d run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY -v /home/evgenyb/scratch:/data javaws
