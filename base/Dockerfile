FROM ubuntu:trusty
MAINTAINER Socrata <sysadmin@socrata.com>

# Default to basic no_proxy list for things that respect it such as set_ark_*
ENV no_proxy localhost,127.0.0.1,169.254.169.254,jenkins

# Add a user so containers can run things as non root.  Not perfect since it is shared across containers,
# but eventually uid namespacing will hopefully fix that.
RUN groupadd -r socrata && useradd -r -g socrata socrata

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    curl \
    python-jinja2 \
    ruby2.0 \ 
    zip && \
  rm -rf /var/lib/apt/lists/*

RUN curl -Lo /bin/envconsul https://github.com/hashicorp/envconsul/releases/download/v0.2.0/envconsul_linux_amd64 && \
    chmod +x /bin/envconsul

RUN mkdir /etc/pre-init.d

COPY env_parse set_ark_host set_ark_hostname ship /bin/
COPY ship.d /etc/ship.d/

RUN gem2.0 install aws-sdk-resources --pre

# Credential management bits
COPY clortho-get /etc/pre-init.d/clortho-get

#Create Data Directory
ENV METRICS_ROOT_DIR /data/metrics
ENV METRICS_DIR $METRICS_ROOT_DIR/$HOSTNAME
RUN mkdir -p $METRICS_DIR

ENTRYPOINT ["/bin/ship"]
CMD ["run"]
