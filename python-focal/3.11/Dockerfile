FROM socrata/base-focal

ENV DEBIAN_FRONTEND noninteractive

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# Add deadsnakes ppa and install 3.11
RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get -y install python3.11 python3.11-venv python3.11-distutils python3.11-dev

# Make python3.11 the default python and install pip
RUN ln -s /usr/bin/python3.11 /usr/local/bin/python && \
    ln -s /usr/bin/python3.11 /usr/local/bin/python3 && \
    python -m ensurepip && \
    python -m pip install -U pip && \
    pip install setuptools==70.0.0 # Install a newer version of setuptools to resolve aqua finding

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python-focal:3.11=""
