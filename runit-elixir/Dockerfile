FROM socrata/runit

# Set up environment
ENV LANG C.UTF-8

# Add erlang solutions repo
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install wget && \
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    DEBIAN_FRONTEND=noninteractive dpkg -i erlang-solutions_1.0_all.deb

# Install erlang & elixir
# NOTE: esl-erlang & elixir are pinned to specific versions
# Any changes to these versions should be synchronized in the
# jenkins-workers cookbook and a new AMI should be built.
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install esl-erlang=1:19.2 elixir=1.3.4-1

# Install Java 8. If we start using this image for things other than one app, we might want to revisit this.
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java && apt-get -y update && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java8-installer && \
  rm -rf /var/cache/oracle-jdk8-installer && \
  rm -rf /var/lib/apt/lists/*

# Add collectd config file
COPY collectd-socket.conf /etc/collectd/conf.d/socket.conf
