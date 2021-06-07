FROM socrata/base-bionic

RUN apt-get clean && apt-get update

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install some basic goodies
RUN apt-get purge -y python.* && \
    apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev python3.6 python3.6-dev python3.6-distutils python3-pip && \
    ln -s /usr/bin/python3 /usr/local/bin/python && \
    ln -s /usr/bin/pip3 /usr/local/bin/pip && \
    ln -s /usr/bin/pydoc3 /usr/local/bin/pydoc && \
    ln -s /usr/bin/python3-config /usr/local/bin/python-config

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python3-bionic=""
