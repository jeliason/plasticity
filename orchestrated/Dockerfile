FROM auryn

WORKDIR /home
COPY pub2015orchestrated /home/pub2015orchestrated
WORKDIR /home/pub2015orchestrated/src

RUN make

RUN mkdir /home/data
RUN mkdir /home/data/sim

RUN apt-get install -y nano gnuplot
RUN apt-get install -y python3-numpy python-numpy
RUN apt-get install -y imagemagick

# ENV PATH="/home/auryn/src:${PATH}"
# RUN mkdir /home/auryn/tools/build-dir
# WORKDIR /home/auryn/tools/build-dir
# RUN cmake ..
# # RUN make && make install

WORKDIR /home/pub2015orchestrated/src
RUN useradd -ms /bin/bash docker
USER docker

ENTRYPOINT [ "/bin/bash" ]

