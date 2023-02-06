From noaaepic/ubuntu20.04-intel-landda:develop

CMD ["/bin/bash"]

ENV HOME=/home
COPY . $HOME/

WORKDIR $HOME

RUN pwd

RUN echo $(ls $HOME)

RUN mkdir build; cd build; source /opt/spack-stack/.bashenv; ecbuild ..; make -j 2
