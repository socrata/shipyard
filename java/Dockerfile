FROM socrata/base

RUN DEBIAN_FRONTEND=noninteractive aapt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java && apt-get -y update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections && \
DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer
