FROM ubuntu:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
MAINTAINER Chris Plaisier <plaisier@asu.edu>
RUN apt-get update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install --yes \
 build-essential \
 gcc-multilib \
 apt-utils \
 zlib1g-dev \
 vim-common \
 wget \
 python3 \
 python3-pip \
 git \
 pigz \
 r-base \
 r-base-dev

# Install cMonkey2
RUN pip3 install cmonkey2

