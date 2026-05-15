FROM phusion/baseimage:jammy-1.0.4 as build

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
          python3-jinja2 \
          python-is-python3 \
          zip \
          iproute2
RUN apt-get -y install --no-install-recommends collectd-core && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add shared files from shipyard repo, this is done to keep these files in sync across all images
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/env_parse /bin/
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/set_ark_host /bin/
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/set_ark_hostname /bin/
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/set_local_dev_hostname /etc/my_init.d/
# Disable core dumps for CIS benchmark
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/coredump.conf /etc/systemd/
# Mark these as executable
RUN chmod 755 /bin/env_parse /bin/set_ark_host /bin/set_ark_hostname /etc/my_init.d/set_local_dev_hostname

# Ensure that containers and apps default to UTF-8
RUN locale-gen en_US.UTF-8

# Configure collectd
RUN mkdir -p /etc/collectd/conf.d
COPY collectd.conf /etc/collectd/collectd.conf
COPY sv/collectd-run /etc/service/collectd/run

FROM scratch
COPY --from=build / /
LABEL maintainer="Socrata 'sysadmin@socrata.com'"
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Default to basic no_proxy list for things that respect it such as set_ark_*
ENV no_proxy localhost,127.0.0.1,169.254.169.254,jenkins

# Set shutdown env vars to reasonable defaults (5 min)
ENV KILL_ALL_PROCESSES_TIMEOUT 300
ENV KILL_PROCESS_TIMEOUT 300

# Default to basic no_proxy list for things that respect it such as set_ark_*
ENV no_proxy localhost,127.0.0.1,169.254.169.254,jenkins

CMD ["/sbin/my_init"]

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-jammy:flattened=""
