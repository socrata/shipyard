# Based off of evarga/jenkins-slave
# This Dockerfile is used to build an image containing basic stuff to be used as a Jenkins slave build node.
# It is based off of ubuntu 10.04, because :'(

FROM ubuntu:10.04
MAINTAINER Michael Brown <michael.brown@socrata.com>

# Change repositories to point to old-releases as lucid is EOL
RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

# Add lines in limits.conf to make the ulimit higher, default of 1024 is from the stone age
RUN echo '*  	hard	    nofile  	525488' >> /etc/security/limits.conf
RUN echo '*  	soft	    nofile  	525488' >> /etc/security/limits.conf

# Make sure the package repository is up to date, upgrade out of date packages.
# Add python-software-properties, which installs the `add-apt-repository` script
# Enable a new repo for git, the default for Ubuntu 10.04 is way too old
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties && \
    add-apt-repository ppa:git-core/ppa

# Install software dependencies to enable Jenkins to SSH and Git properly.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
            git-core \
            openssh-server

# Configure SSH server.
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd

# Add gitconfig file to force https, proxies won't allow SSH out
ADD gitconfig /home/jenkins/.gitconfig

# Add this to enable JDK 7 on lucid.
# Required to run Jenkins slave process and connect to Jenkins master (running Java7 as well)
ADD jdk7.tar.gz /usr/lib/jvm
RUN ln -fs /usr/lib/jvm/jdk1.7*/bin/java /usr/bin/java

# Add user jenkins to the image and set password.
RUN useradd jenkins && \
    echo "jenkins:jenkins" | chpasswd && \
    mkdir -p /home/jenkins && \
    chown jenkins:jenkins /home/jenkins && \
    chsh -s /bin/bash jenkins

# Ruby-specific dependencies (TODO: pull out into language specific slaves)
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
            autoconf \
            bison \
            build-essential \
            curl \
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

# Add init scripts to the docker container and run them as the jenkins user
# This sets up rbenv/ruby and node for frontend builds
ADD init-scripts /etc/init-scripts
RUN sudo -Eu jenkins /etc/init-scripts/rbenv-install.sh && \
    sudo -Eu jenkins /etc/init-scripts/node-install.sh

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
