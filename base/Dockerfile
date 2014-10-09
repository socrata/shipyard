FROM ubuntu:trusty
MAINTAINER Anthony Nowell <anthony.nowell@socrata.com.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y dist-upgrade

ADD start /bin/
ADD start.d /etc/

ENTRYPOINT ["/bin/start"]
CMD ["run"]
