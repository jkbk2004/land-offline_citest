#From noaaepic/ubuntu20.04-intel-landda:develop
From noaaepic/ubuntu20.04-gnu9.3-hpc-stack:v1.2

CMD ["/bin/bash"]

ENV HOME=/home
COPY --chown=builder:builder . $HOME/land-offline_citest

WORKDIR $HOME/land-offline_citest
#CMD mkdir build; cd build; source /opt/spack-stack/.bashenv; ecbuild ..
