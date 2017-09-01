FROM centos:7

RUN set -x \
    && yum groupinstall -y development

RUN set -x \
    && mkdir /rust \
    && curl -sSfL https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init -o /rust/rustup-init \
    && chmod +x /rust/rustup-init \
    && /rust/rustup-init -y -v

ENV PATH $PATH:/root/.cargo/bin
