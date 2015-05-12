FROM socrata/ruby:1.9
MAINTAINER Socrata <sysadmin@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    automake \
    g++ \
    gcc \
    git \
    libsnappy1 \
    libsnappy-dev \
    libxml2-dev \
    libxslt1-dev \
    make \
    patch \
    unicorn \
    zlib1g-dev \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /tmp/bundle

COPY Gemfile* /tmp/bundle/

RUN gem install multi_xml -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install nokogiri -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install nokogumbo -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install snappy \
  && cd /tmp/bundle \
  && bundle install
