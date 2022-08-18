FROM gitpod/workspace-full-vnc

USER root

RUN export DEBIAN_FRONTEND='noninteractive' \
    && apt-get update \
    && apt-get install -y \
        apt-transport-https \
        build-essential \
        ca-certificates \
        dirmngr \
        gettext \
        lsb-release \
        munge \
        netcat \
        slurm-client \
        sview \
        tldr \
    && rm -rf /var/lib/apt/lists/*

COPY .gitpod.slurm.conf /etc/slurm-llnl/slurm.conf
COPY jupyter/cgroup.conf /etc/slurm-llnl/

USER gitpod

