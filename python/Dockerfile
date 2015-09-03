FROM socrata/base

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev python-pip

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python=""
