FROM ubuntu:focal
LABEL maintainer="Socrata 'sysadmin@socrata.com'"

# Default to basic no_proxy list for things that respect it such as set_ark_*
ENV no_proxy localhost,127.0.0.1,169.254.169.254,jenkins
ENV DEBIAN_FRONTEND noninteractive

# Add a user so containers can run things as non root.  Not perfect since it is shared across containers,
# but eventually uid namespacing will hopefully fix that.
RUN groupadd -r socrata && useradd -r -g socrata socrata

RUN apt-get -y update && \
    apt-get -y upgrade; \
    apt-get -y install \
          build-essential \
          locales \
          curl \
          dnsutils \
          zip \
          ruby2.7 \
          iproute2 \
          less \
          netcat-openbsd \
          sudo \
          vim-tiny && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /etc/pre-init.d

RUN gem2.7 install aws-sdk-s3 -v '>= 1.76.0'
RUN gem2.7 install --no-document aws-sdk-resources --pre -v '>= 2.11.562'

COPY env_parse set_ark_host set_ark_hostname set_local_dev_hostname ship /bin/
COPY ship.d /etc/ship.d/

# Credential management bits
ADD https://raw.githubusercontent.com/socrata/shipyard/main/files/clortho-get /etc/pre-init.d/clortho-get

# Disable core dumps for CIS benchmark
COPY coredump.conf /etc/systemd/

#Create Data Directory
ENTRYPOINT ["/bin/ship"]
CMD ["run"]

# Ensure that containers and apps default to UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/base-focal=""
