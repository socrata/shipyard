FROM socrata/runit-java8
MAINTAINER mission-control-l@socrata.com

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \ 
  DEBIAN_FRONTEND=noninteractive apt-get -y install python python-pip python-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

LABEL repository.socrata/runit-java8-python=""
