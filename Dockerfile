FROM ubuntu:18.04

MAINTAINER "Joel Eliason" joel.eliason119@gmail.com

ENV TERM=xterm \
    TZ=Americas/Chicago \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
 cmake git build-essential libboost-all-dev

RUN git clone https://github.com/fzenke/auryn.git
WORKDIR /auryn/build/release
RUN ./bootstrap.sh && make


RUN mkdir /home/work

ENTRYPOINT [ "/bin/bash" ]