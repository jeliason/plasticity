FROM jeliason/plasticity:latest

WORKDIR /
RUN git clone https://github.com/fzenke/pub2015orchestrated.git
WORKDIR /pub2015orchestrated/src

RUN make

RUN mkdir /home/data/sim

ENTRYPOINT [ "/bin/bash" ]

