FROM socrata/ruby:1.9
MAINTAINER Socrata <sysadmin@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update \
  && DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common \
  && DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java \
  && apt-get -y update \
  && echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
  && echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-installer \
  && rm -rf /var/cache/oracle-jdk8-installer \
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
    nginx \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /tmp/bundle

COPY Gemfile* /tmp/bundle/

RUN gem install multi_xml -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install nokogiri -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install nokogumbo -- --use-system-libraries=true --with-xml2-include=/usr/include/libxml2 \
  && gem install snappy \
  && cd /tmp/bundle \
  && bundle install --path /opt/gems

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/rails3-deps:1.9=""
