FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        dirmngr \
        git \
        libopenmpi-dev \
        lsb-release \
        mariadb-server \
        munge \
        python3-pip \
        python3.9 \
        slurm-client \
        sudo \
        wget \
        xtail \
    && rm -rf /var/lib/apt/lists/*


RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && rm -rf /var/lib/apt/lists/*


RUN apt-get update \
    && apt-get install -y \
        nodejs \
    && npm install -g configurable-http-proxy && pip3 install jupyterlab==2.1.2 \
    && rm -rf /var/lib/apt/lists/*


RUN useradd -m admin -s /usr/bin/bash -d /home/admin \
    && echo "admin:admin" | chpasswd && adduser admin sudo \
    && echo "admin     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers


COPY slurm.conf /etc/slurm-llnl/
COPY cgroup.conf /etc/slurm-llnl/
COPY docker-entrypoint.sh /etc/slurm-llnl/

WORKDIR /home/admin

EXPOSE 8888

ENV USER admin
ENV SHELL bash

RUN pip3 install mpi4py && pip3 install jupyterlab_slurm

ENTRYPOINT ["/etc/slurm-llnl/docker-entrypoint.sh"]
