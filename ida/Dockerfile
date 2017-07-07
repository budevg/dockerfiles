FROM centos:7

ADD ida.tar.gz /ida

RUN set -x \
    && yum install -y redhat-lsb-core.i686 glib2.i686 \
                      libXext.i686 libXi.i686 libSM.i686 \
                      libICE.i686 freetype.i686 \
                      fontconfig.i686 dbus-libs.i686 \
                      libXrender.i686 xterm xorg-x11-fonts*

RUN set -x \
    && cd /ida/ida* \
    && chmod +x *.run

RUN cat /ida/ida*/readme.txt

# d run -it --name lala lala /bin/bash -c '/ida/ida*/*.run --installpassword xxxx'
# d export lala | d import - ida
# d run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd:/dev/snd -e DISPLAY=unix$DISPLAY ida bash -c '/opt/ida*/idaq64'
