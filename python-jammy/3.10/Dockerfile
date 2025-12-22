FROM socrata/base-jammy

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev python3.10-minimal python-is-python3 python3.10-dev python-dev-is-python3 python3.10-distutils python3-pip python3.10-venv

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python-jammy:3.10=""
