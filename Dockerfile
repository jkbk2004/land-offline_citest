#From noaaepic/ubuntu20.04-intel-landda:develop
From jongkim2004/ubuntu-hpc:v1.2

CMD ["/bin/bash"]

ENV HOME=/home
COPY . $HOME/

WORKDIR $HOME/land-offline_citest

RUN pwd

RUN echo $(ls -1 $HOME/land-offline_citest)
#CMD pwd; ls; mkdir build; cd build; source /opt/spack-stack/.bashenv; ecbuild ..
