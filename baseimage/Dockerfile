FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG UID=33333
ARG GID=33333

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        curl \
        git \
        libopenmpi-dev \
        mariadb-server \
        munge \
        python3-pip \
        python3.9 \
        sudo \
        wget \
        xtail \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install mpi4py

RUN groupadd -g $GID gitpod \
    && useradd -u $UID -g $GID -m gitpod -s /usr/bin/bash -d /home/gitpod \
    && echo "gitpod:gitpod" | chpasswd \
    && adduser gitpod sudo \
    && echo "gitpod     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && mkdir -p /home/gitpod \
    && sudo chown -R gitpod:gitpod /home/gitpod

