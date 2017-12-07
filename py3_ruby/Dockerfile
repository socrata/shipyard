FROM socrata/base

RUN apt-get update

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

##################################################
# Ruby installation
##################################################
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get --force-yes -fuy install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:brightbox/ruby-ng && \
  DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y ruby2.4 ruby2.4-dev && \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove software-properties-common && \
  rm -rf /var/lib/apt/lists/*

# skip installing gem documentation
RUN echo 'gem: --no-rdoc --no-ri --no-document' >> "/etc/gemrc" && \
  gem install bundler

##################################################
# Python installation
##################################################
# remove several traces of debian python
RUN apt-get purge -y python.*

# install some basic goodies
RUN apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev

# download python source
RUN curl https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz -o Python-3.6.0.tgz \
  && tar -zxf Python-3.6.0.tgz \
  && cd Python-3.6.0 \
  && ./configure && make && make install

# remove installation bits
RUN rm Python-3.6.0.tgz && rm -r Python-3.6.0

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \
  && ln -s easy_install-3.6 easy_install \
  && ln -s pip3.6 pip \
  && ln -s pydoc3.6 pydoc \
  && ln -s python3.6 python \
  && ln -s python-config3.6 python-config

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/py3_ruby=""
