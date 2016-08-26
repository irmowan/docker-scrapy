From ubuntu:14.04
MAINTAINER irmo <irmowan@gmail.com>

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

# define entrypoint
CMD ["/bin/bash"]
