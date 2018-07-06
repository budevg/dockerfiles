FROM centos:7

RUN set -x \
    && yum install -y wget libX11 libXext fontconfig libXi \
                      libSM xkeyboard-config \
    && mkdir -p /install \
    && wget https://out7.hex-rays.com/files/idafree70_linux.run -O /install/ida.run \
    && chmod +x /install/ida.run \
    && /install/ida.run --mode unattended \
    && rm -rf /install \
    && dbus-uuidgen > /var/lib/dbus/machine-id

CMD ["/opt/idafree-7.0/ida64"]

#docker run -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY --rm ida-free
