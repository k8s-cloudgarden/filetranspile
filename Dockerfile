FROM registry.fedoraproject.org/fedora:34

COPY filetranspile /usr/bin/filetranspile

RUN dnf update -y && \
    dnf install -y python3-yaml python3-magic && \
    chmod a+x /usr/bin/filetranspile

WORKDIR /srv
ENTRYPOINT ["/usr/bin/filetranspile"]
