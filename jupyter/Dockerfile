FROM wilj.net/slurm/baseimage

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        slurm-client \
        dirmngr \
        apt-transport-https \
        lsb-release \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y \
        nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g configurable-http-proxy && pip3 install jupyterlab==2.1.2 

COPY slurm.conf /etc/slurm-llnl/
COPY cgroup.conf /etc/slurm-llnl/
COPY docker-entrypoint.sh /etc/slurm-llnl/
COPY munge.key /etc/munge/
RUN chown munge:munge /etc/munge/munge.key && chmod 400 /etc/munge/munge.key

WORKDIR /home/gitpod

EXPOSE 8888

ENV USER gitpod
ENV SHELL bash

RUN pip3 install jupyterlab_slurm

ENTRYPOINT ["/etc/slurm-llnl/docker-entrypoint.sh"]
