FROM socrata/base-focal

RUN apt-get update

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install some basic goodies
RUN apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev zlib1g-dev

# Build Python3.11
RUN <<EOF bash
# Install Python
curl https://www.python.org/ftp/python/3.11.1/Python-3.11.1.tgz -o Python-3.11.1.tgz 
tar xzf Python-3.11.1.tgz 
cd Python-3.11.1
./configure --enable-optimizations
make altinstall
EOF

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python3.11-focal=""
