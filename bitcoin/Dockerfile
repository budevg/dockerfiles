FROM ubuntu:16.04

RUN set -x \
    && apt-get update

RUN set -x \
    && apt-get install -y build-essential

RUN set -x \
    && apt-get install -y git autoconf libtool pkg-config \
       libdb++-dev bsdmainutils libboost-all-dev libssl-dev \
       libevent-dev time

RUN set -x \
    && git clone https://github.com/bitcoin/bitcoin.git

RUN set -x \
    && cd bitcoin \
    && ./autogen.sh \
    && ./configure --with-incompatible-bdb

RUN set -x \
    && cd bitcoin \
    && time make -j4


CMD ["/bin/bash"]
