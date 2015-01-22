FROM ubuntu:trusty
MAINTAINER Socrata <sysadmin@socrata.com>

# Add a user so containers can run things as non root.  Not perfect since it is shared across containers,
# but eventually uid namespacing will hopefully fix that.
RUN groupadd -r socrata && useradd -r -g socrata socrata

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    curl \
    python-jinja2 \
    ruby2.0 && \
  rm -rf /var/lib/apt/lists/*

RUN curl -Lo /bin/envconsul https://github.com/hashicorp/envconsul/releases/download/v0.2.0/envconsul_linux_amd64 && \
    chmod +x /bin/envconsul

RUN mkdir /etc/pre-init.d

COPY env_parse set_ark_host set_ark_hostname ship /bin/
COPY ship.d /etc/ship.d/

RUN gem2.0 install aws-sdk-resources --pre

# Credential management bits
COPY clortho-get /etc/pre-init.d/clortho-get

ENTRYPOINT ["/bin/ship"]
CMD ["run"]
