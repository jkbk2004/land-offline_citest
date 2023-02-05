From noaaepic/ubuntu20.04-intel-landda:develop

CMD ["/bin/bash"]

ENV HOME=/home/builder
COPY --chown=builder:builder . $HOME/land-offline_citest

WORKDIR $HOME/land-offline_citest
CMD mkdir build; cd build; source /opt/spack-stack/.bashenv; ecbuild ..
