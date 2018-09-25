FROM socrata/runit
MAINTAINER Socrata <sysadmin@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive

# Update the Python installed version to latest
# Recommended 3rd party PPA for newer versions of python
# not supported by ubuntu 14.04 debian repos
# Python 2.7.6 is too out of date for current needs
RUN sudo add-apt-repository ppa:jonathonf/python-2.7 
RUN sudo apt-get -y update && \
    sudo apt-get -y upgrade; \
    sudo apt-get -y install curl \
                            build-essential \
                            python2.7

# Install pip from source
RUN curl -s https://bootstrap.pypa.io/get-pip.py | python

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# collectd configuration
COPY collectd.statsd.conf /etc/collectd/conf.d/statsd.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python=""
