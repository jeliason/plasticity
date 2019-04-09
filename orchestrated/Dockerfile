FROM auryn

WORKDIR /home
COPY pub2015orchestrated /home/pub2015orchestrated
WORKDIR /home/pub2015orchestrated/src

RUN make

RUN mkdir /home/data
RUN mkdir /home/data/sim

ENTRYPOINT [ "/bin/bash" ]

