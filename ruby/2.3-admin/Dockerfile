FROM socrata/ruby:2.3
MAINTAINER Socrata <sysadmin@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential \
    libpq-dev \
    libsqlite3-dev \
    libxml2-dev \
    libxslt-dev \
    make && \
  apt-get -y purge \
    keyboard-configuration \
    libruby1.9.1 \
    perl \
    ruby1.9.1 \
    ruby2.0 \
  && rm -rf /var/lib/apt/lists/*

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/ruby2.3-admin=""
