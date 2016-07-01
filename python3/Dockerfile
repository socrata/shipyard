FROM socrata/base

RUN apt-get update

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# remove several traces of debian python
RUN apt-get purge -y python.*

# install some basic goodies
RUN apt-get -y install build-essential libssl-dev gfortran gcc g++

# download python source
RUN curl https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz -o Python-3.5.2.tgz \
  && tar -zxf Python-3.5.2.tgz \
  && cd Python-3.5.2 \
  && ./configure && make && make install

# remove installation bits
RUN rm Python-3.5.2.tgz && rm -r Python-3.5.2

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \
  && ln -s easy_install-3.5 easy_install \
  && ln -s pip3.5 pip \
  && ln -s pydoc3.5 pydoc \
  && ln -s python3.5 python \
  && ln -s python-config3.5 python-config

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python3=""
