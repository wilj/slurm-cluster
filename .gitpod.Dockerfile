FROM gitpod/workspace-full-vnc

USER root

RUN export DEBIAN_FRONTEND='noninteractive' \
    && apt-get update \
    && apt-get install -y \
        netcat \
        build-essential \
        tldr \
        sview \
    && rm -rf /var/lib/apt/lists/*

USER gitpod

