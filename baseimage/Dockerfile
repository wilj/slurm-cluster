FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        git \
        libopenmpi-dev \
        mariadb-server \
        munge \
        python3-pip \
        python3.9 \
        slurm-client \
        slurmctld \
        slurmd \
        sudo \
        wget \
        xtail \
    && rm -rf /var/lib/apt/lists/*



RUN useradd -m admin -s /usr/bin/bash -d /home/admin \
    && echo "admin:admin" | chpasswd && adduser admin sudo \
    && echo "admin     ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN pip3 install mpi4py