FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    vim nano less man-db \
    sudo passwd adduser \
    procps psmisc \
    net-tools iproute2 \
    cron \
    findutils grep coreutils \
    util-linux lsof tree \
    plocate \
    htop \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# directorio de trabajo
WORKDIR /app

CMD [ "/bin/bash" ]