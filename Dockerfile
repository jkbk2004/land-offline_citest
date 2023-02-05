#From noaaepic/ubuntu20.04-intel-landda:develop
From jongkim2004/ubuntu-hpc:v1.2

CMD ["/bin/bash"]

ENV HOME=/home
COPY . $HOME/

WORKDIR $HOME

RUN pwd

#RUN echo $(ls -l $HOME)
CMD mkdir build; cd build; source /opt/spack-stack/.bashenv; ecbuild ..; make -j 2
