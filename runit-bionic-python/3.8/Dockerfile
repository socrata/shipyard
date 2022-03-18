FROM socrata/runit-bionic
LABEL maintainer="Socrata 'sysadmin@socrata.com'"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get -y purge python2.7 && apt-get -y autoremove --purge && \
    apt-get -y install python3.8 python3.8-dev python3-pip && \
    python3.8 -m pip install -U pip

RUN ln -s /usr/bin/python3.8 /usr/local/bin/python && \
    ln -s /usr/bin/python3.8 /usr/local/bin/python3 && \
    ln -s /usr/bin/pydoc3.8 /usr/local/bin/pydoc && \
    ln -s /usr/bin/pydoc3.8 /usr/local/bin/pydoc3 && \
    ln -s /usr/bin/python3.8-config /usr/local/bin/python-config && \
    ln -s /usr/bin/python3.8-config /usr/local/bin/python3-config

# collectd configuration
COPY collectd.statsd.conf /etc/collectd/conf.d/statsd.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-bionic-python:3.8=""
