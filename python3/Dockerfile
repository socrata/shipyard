FROM socrata/base

RUN apt-get update

# remove several traces of debian python
RUN apt-get purge -y python.*

RUN apt-get -y install build-essential libssl-dev gfortran gcc g++ python3 python3-dev python3-pip

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \
    	&& ln -s /usr/bin/easy_install-3.4 easy_install \
	&& ln -s /usr/bin/pydoc3 pydoc \
	&& ln -s /usr/bin/python3 python \
	&& ln -s /usr/bin/python-config3 python-config

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python3=""
