From ubuntu:14.04
MAINTAINER irmo <irmowan@gmail.com>

ENV MSTUBE_ZIP https://github.com/luckyyd/hackathon-mstube/archive/master.zip
ENV SOURCE=

# install packages
RUN apt-get update -y \
    && apt-get install -y \
       apt-utils \
       vim \
       git \
       wget \
       unzip \
       freetds-dev \
       freetds-bin \
       python3-pip

# install pymssql
RUN pip3 install pymssql

# install scrapy
RUN apt-get install -y \
    libxml2-dev \
    libxslt1-dev \
    python-dev \
    libz-dev \
    libffi-dev \
    libssl-dev
RUN pip3 install Cython scrapy requests

# get repository
WORKDIR /root
RUN wget $MSTUBE_ZIP \
    && unzip master.zip \
    && mv hackathon-mstube-master hackathon-mstube

# copy shell script and define entrypoint
ADD entrypoint /
ENTRYPOINT /entrypoint $SOURCE
