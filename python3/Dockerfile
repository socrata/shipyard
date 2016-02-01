FROM socrata/base

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3 python3-dev python3-pip
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.4 1

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python3=""
