FROM ubuntu:trusty
MAINTAINER Anthony Nowell <anthony.nowell@socrata.com.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-jinja2 curl

RUN curl -Lo /bin/envconsul https://github.com/hashicorp/envconsul/releases/download/v0.2.0/envconsul_linux_amd64 && \
    chmod +x /bin/envconsul

ADD set_ark_host /bin/set_ark_host
ADD set_ark_hostname /bin/set_ark_hostname
ADD ship /bin/ship
ADD ship.d /etc/ship.d

ADD env_parse /bin/env_parse

ENTRYPOINT ["/bin/ship"]
CMD ["run"]
