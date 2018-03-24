FROM alpine

ENV USER=root

RUN set -x \
    && mkdir /nix \
    && apk update \
    && apk add curl bzip2 shadow bash

RUN set -x \
    && groupadd nixbld \
    && useradd nixbld0 \
    && usermod -a -G nixbld nixbld0 \
    && usermod -a -G nixbld root

RUN set -x \
    && curl https://nixos.org/nix/install | sh

RUN set -x \
    && echo '. /root/.nix-profile/etc/profile.d/nix.sh' >> /root/.bashrc

RUN . /root/.nix-profile/etc/profile.d/nix.sh \
    && set -x \
    && nix search dummy-search

ENV PAGER=cat
CMD ["/bin/bash"]
