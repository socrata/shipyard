FROM ubuntu:trusty
MAINTAINER Anthony Nowell <anthony.nowell@socrata.com.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-jinja2

ADD ship /bin/ship
ADD ship.d /etc/ship.d

ADD env_parse /bin/env_parse

ENTRYPOINT ["/bin/ship"]
CMD ["run"]
