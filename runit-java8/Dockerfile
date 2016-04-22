FROM socrata/runit
MAINTAINER Socrata <sysadmin@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java && apt-get -y update && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-installer && \
  rm -rf /var/cache/oracle-jdk8-installer && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH /usr/lib/jvm/java-8-oracle/jre/lib/amd64/server:${LD_LIBRARY_PATH}
ENV JAVA_TOOL_OPTIONS="-Dcom.sun.management.jmxremote.port=11114 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"

COPY set_jmx_hostname /etc/my_init.d/set_jmx_hostname
COPY collectd-jmx.conf /etc/collectd/conf.d/jmx.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-java8=""
