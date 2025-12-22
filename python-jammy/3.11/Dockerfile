FROM socrata/base-jammy

# Install python3.11 and set it as the default
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev python3.11-minimal python-is-python3 python3.11-dev python-dev-is-python3 python3.11-distutils python3-pip python3.11-venv && \
    update-alternatives --install /usr/bin/python3-config python3-config /usr/bin/python3.11-config 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python-jammy:3.11=""
