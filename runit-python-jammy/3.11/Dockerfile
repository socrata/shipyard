FROM socrata/runit-jammy
LABEL maintainer="Socrata 'sysadmin@socrata.com'"

ENV DEBIAN_FRONTEND noninteractive

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install python-is-python3 python3.11-dev python3-pip && \
    update-alternatives --install /usr/bin/python3-config python3-config /usr/bin/python3.11-config 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# collectd configuration
COPY collectd.statsd.conf /etc/collectd/conf.d/statsd.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-python-jammy:3.11=""
