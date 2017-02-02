  # Based off of evarga/jenkins-slave
# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.
FROM socrata/rails4-deps:2.3

# This was the original, trying to make it match the frontend version
#FROM ubuntu:14.04
MAINTAINER Matt Shanker <matthew.shanker@socrata.com>

# Add lines in limits.conf to make the ulimit higher, default of 1024 is from the stone age
RUN echo '*  	hard	    nofile  	525488' >> /etc/security/limits.conf
RUN echo '*  	soft	    nofile  	525488' >> /etc/security/limits.conf

# Make sure the package repository is up to date, upgrade out of date packages.
# Add python-software-properties, which installs the `add-apt-repository` script
# Enable a new repo for git, the default for Ubuntu 10.04 is way too old
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties software-properties-common && \
    add-apt-repository ppa:git-core/ppa

# Install software dependencies to enable Jenkins to SSH and Git properly.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
            git-core \
            openssh-server \
            sudo

# Install PhantomJS 1.9.8
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y libfontconfig1 bzip2 && \
    mkdir -p /usr/local/share/phantomjs && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 && \
    tar xjf phantomjs-1.9.8-linux-x86_64.tar.bz2 --strip=1 -C /usr/local/share/phantomjs && \
    rm -f phantomjs-1.9.8-linux-x86_64.tar.bz2 && \
    ln -fs /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin/phantomjs

RUN apt-get install -y python-software-properties && \
  add-apt-repository ppa:ubuntu-toolchain-r/test && \
  apt-get update && \
  apt-get remove -y gcc && \
  apt-get install -y gcc-4.8 && \
  update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

RUN apt-get remove -y g++ && \
  apt-get install -y g++-4.8 && \
  update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50

# Install JDK7 on Ubuntu
# Required to run Jenkins slave process and connect to Jenkins master
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java && apt-get -y update && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install oracle-java7-installer && \
  rm -rf /var/cache/oracle-jdk7-installer && \
  rm -rf /var/lib/apt/lists/*

# Configure SSH server.
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd

# Add gitconfig file to force https, proxies won't allow SSH out
ADD gitconfig /home/jenkins/.gitconfig
ADD authorized_keys /home/jenkins/.ssh/authorized_keys

# Add user jenkins to the image and set password.
RUN useradd -m jenkins && \
    echo "jenkins:jenkins" | chpasswd && \
    mkdir -p /home/jenkins && \
    chown jenkins:jenkins /home/jenkins && \
    chsh -s /bin/bash jenkins

RUN echo "jenkins ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers

# Ruby-specific dependencies (TODO: pull out into language specific slaves)
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
            autoconf \
            bison \
            build-essential \
            curl \
            docker.io \
            fontconfig \
            gnome-common \
            libffi-dev \
            libgdbm-dev \
            libgdbm3 \
            libncurses5-dev \
            libreadline6-dev \
            libssl-dev \
            libtool \
            libxml2-dev \
            libxslt-dev \
            libyaml-dev \
            wget \
            zlib1g-dev

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

