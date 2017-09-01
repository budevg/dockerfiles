FROM ubuntu:16.04

ARG CHROME_VER=stable

RUN set -x \
    && mkdir -p /install

RUN (echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf.d/55local)

RUN set -x \
    && apt-get update \
    && apt-get install -y wget ca-certificates gdebi
RUN set -x \
    && cd /install \
    && wget https://dl.google.com/linux/direct/google-chrome-${CHROME_VER}_current_amd64.deb \
    && (dpkg -i ./google-chrome-*.deb ; apt-get install -y -f)

RUN rm -rf /install

CMD ["google-chrome", "--no-sandbox", "--user-data-dir=/data", "--disable-gpu"]

#d build -t chrome . --build-arg CHROME_VER=unstable
#d run --rm -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY -it -v `readlink -f ~/scratch/data`:/data chrome
