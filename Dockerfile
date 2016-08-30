From ubuntu:14.04
MAINTAINER irmo <irmowan@gmail.com>

ENV MSTUBE_ZIP https://github.com/luckyyd/hackathon-mstube/archive/master.zip
ENV SOURCE=

# install packages
RUN apt-get update -y
RUN apt-get install -y apt-utils \
    vim \
    git \
    freetds-dev \
    freetds-bin

# install pip
RUN apt-get install -y python3-pip
RUN apt-get install -y wget unzip

# install pymssql
RUN pip3 install pymssql

# install scrapy
RUN apt-get install -y libxml2-dev libxslt1-dev python-dev 
RUN apt-get install -y libz-dev libffi-dev libssl-dev
RUN pip3 install Cython
RUN pip3 install scrapy
RUN pip3 install requests

# get repository
WORKDIR /root
RUN wget $MSTUBE_ZIP
RUN unzip master.zip
RUN mv hackathon-mstube-master hackathon-mstube

# copy shell script and define entrypoint
ADD entrypoint /
ENTRYPOINT /entrypoint $SOURCE
