FROM ubuntu:16.04

ARG RESOLVER=lts-8.6
RUN set -x \
    && echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf.d/55local \
    && apt-get update \
    && apt-get install -y build-essential curl wget ca-certificates

RUN set -x \
    && curl -sSL https://get.haskellstack.org/ | sh

ENV PATH=/root/.local/bin:$PATH

RUN set -x \
    && stack --resolver=$RESOLVER setup

RUN set -x \
    && echo "alias gstack='stack --resolver=global'" >> /root/.bashrc
