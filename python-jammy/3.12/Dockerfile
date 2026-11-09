FROM socrata/base-jammy

# use deadsnakes PPA because python 3.12 is not in jammy's default repos
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libssl-dev gfortran gcc g++ libbz2-dev python3.12 python-is-python3 python3.12-dev python-dev-is-python3 python3-pip python3.12-venv && \
    update-alternatives --install /usr/bin/python3-config python3-config /usr/bin/python3.12-config 1 && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/python-jammy:3.12=""
