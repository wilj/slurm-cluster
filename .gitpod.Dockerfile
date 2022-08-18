FROM gitpod/workspace-full-vnc

USER root

RUN export DEBIAN_FRONTEND='noninteractive' \
    && apt-get update \
    && apt-get install -y \
        apt-transport-https \
        build-essential \
        ca-certificates \
        dirmngr \
        lsb-release \
        munge \
        netcat \
        slurm-client \
        sview \
        tldr \
    && rm -rf /var/lib/apt/lists/*

COPY jupyter/slurm.conf /etc/slurm-llnl/
COPY jupyter/cgroup.conf /etc/slurm-llnl/
COPY jupyter/docker-entrypoint.sh /etc/slurm-llnl/

USER gitpod

