FROM phusion/baseimage:0.11
LABEL maintainer="Socrata 'sysadmin@socrata.com'"

# Default to basic no_proxy list for things that respect it such as set_ark_*
ENV no_proxy localhost,127.0.0.1,169.254.169.254,jenkins
ENV DEBIAN_FRONTEND noninteractive

# Add a user so containers can run things as non root.  Not perfect since it is shared across containers,
# but eventually uid namespacing will hopefully fix that.
RUN groupadd -r socrata && useradd -m -r -g socrata socrata

RUN apt-get -y update && \
    apt-get -y dist-upgrade; \
    apt-get -y install \
          build-essential \
          locales \
          curl \
          dnsutils \
          python-jinja2 \
          zip \
          ruby2.5 \
          iproute2
RUN apt-get -y install --no-install-recommends collectd-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Adding --minimal-deps to these to slim down this layer
# Adding -f to aws-sdk-resources because it kept trying to pull a version of aws-sdk-core that was incompatible with ruby 2.5
RUN gem2.5 install --minimal-deps --no-document aws-eventstream -v '1.3.2' && \
    gem2.5 install --minimal-deps --no-document aws-partitions -v '1.1109.0' && \
    gem2.5 install --minimal-deps --no-document aws-sigv4 -v '1.11.0' && \
    gem2.5 install --minimal-deps --no-document aws-sdk-core -v '3.224.1' && \
    gem2.5 install --minimal-deps --no-document aws-sdk-kms -v '1.101.0' && \
    gem2.5 install --minimal-deps --no-document aws-sdk-s3 -v '1.188.0' && \
    gem2.5 install -f --minimal-deps --no-document aws-sdk-resources -v '3.227.0'

COPY env_parse set_ark_host set_ark_hostname /bin/
COPY set_local_dev_hostname /etc/my_init.d/

# Credential management bits
COPY clortho-get /etc/my_init.d/clortho-get

# Disable core dumps for CIS benchmark
COPY coredump.conf /etc/systemd/

CMD ["/sbin/my_init"]

# Configure collectd
RUN mkdir -p /etc/collectd/conf.d
COPY collectd.conf /etc/collectd/collectd.conf
COPY sv/collectd-run /etc/service/collectd/run

# Set shutdown env vars to reasonable defaults (5 min)
ENV KILL_ALL_PROCESSES_TIMEOUT 300
ENV KILL_PROCESS_TIMEOUT 300

# Ensure that containers and apps default to UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-bionic=""
