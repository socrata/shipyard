FROM socrata/base-focal

RUN apt-get update

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install some basic goodies
RUN apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev python-is-python3 python3-dev python-dev-is-python3 python3-distutils python3-pip

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python-focal=""
