FROM wilj.net/slurm/baseimage

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y \
        slurmd \
        slurm-client \
    && rm -rf /var/lib/apt/lists/*


COPY slurm.conf /etc/slurm-llnl/
COPY cgroup.conf /etc/slurm-llnl/
COPY docker-entrypoint.sh /etc/slurm-llnl/
COPY munge.key /etc/munge/
RUN chown munge:munge /etc/munge/munge.key && chmod 400 /etc/munge/munge.key

EXPOSE 6817 6818 6819  

ENTRYPOINT ["/etc/slurm-llnl/docker-entrypoint.sh"]
