FROM socrata/runit-focal as python_build
LABEL maintainer="Socrata 'sysadmin@socrata.com'"

ENV DEBIAN_FRONTEND noninteractive

# Set desired python minor version here
ENV SOCRATA_PYTHON_VERSION 3.11

# Python build dependencies from https://devguide.python.org/contrib/workflows/install-dependencies/
ENV PYTHON_BUILD_DEPS git \
                      build-essential \
                      inetutils-inetd \
                      gdb \
                      lcov \
                      libbz2-dev \
                      libffi-dev \
                      libgdbm-dev \
                      libgdbm-compat-dev \
                      liblzma-dev \
                      libmpdec-dev \
                      libncurses5-dev \
                      libreadline6-dev \
                      libsqlite3-dev \
                      libssl-dev \
                      libzstd-dev \
                      lzma \
                      lzma-dev \
                      pkg-config \
                      tk-dev \
                      uuid-dev \
                      zlib1g-dev

# Add build dependencies used by python-build
RUN apt-get update && \
    apt-get install -y $PYTHON_BUILD_DEPS

# Build and install latest desired python minor version in /opt/python_build prefix to be copied over in the next stage
RUN git clone https://github.com/pyenv/pyenv.git /opt/pyenv && \
    /opt/pyenv/plugins/python-build/bin/python-build \
        $(/opt/pyenv/plugins/python-build/bin/python-build --definitions | \
            grep  "^${SOCRATA_PYTHON_VERSION}\." | \
            sort -Vr | \
            head -1) \
        /opt/python_build/

FROM socrata/runit-focal

# Add locale profiles and default to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

COPY --from=python_build [ "/opt/python_build/", "/usr/local/" ]
RUN ldconfig

# collectd configuration
COPY collectd.statsd.conf /etc/collectd/conf.d/statsd.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-python-focal:3.11=""
