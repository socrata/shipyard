# Based off of socrata/frontend-12_04
# This Dockerfile is used to replace the stock Ruby with version 2.3.0 to support building the new Rails 4
# version of the frontend

FROM socrata/frontend-12_04
MAINTAINER Randy Antler <randy.antler@socrata.com>

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

# Build and install Ruby 2.3.0 to _replace_ the system version
RUN cd /tmp ; \
    curl -OL https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.bz2 ; \
    tar xjvf ruby-2.3.0.tar.bz2 ; \
    cd ruby-2.3.0/ ; \
    ./configure --prefix=/usr ; \
    make && make install ; \
    cd ..

# Build and install Rubygems to _replace_ the system version
RUN cd /tmp ; \
    curl -OL https://rubygems.org/rubygems/rubygems-2.6.2.tgz ; \
    tar xzvf rubygems-2.6.2.tgz ; \
    cd rubygems-2.6.2 ; \
    ruby setup.rb ; \
    cd ..

# Install bundler gem
RUN gem install bundler

# Install Apache passenger 5.0.26 (or whatever version this incantation installs)
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7 ; \
    apt-get install -y apt-transport-https ca-certificates ; \
    sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger precise main > /etc/apt/sources.list.d/passenger.list'  ; \
    apt-get update ; \
    apt-get install -y libapache2-mod-passenger ; \
    a2enmod passenger ; \
    /usr/bin/passenger-config validate-install ; \
    passenger-install-apache2-module -a

RUN apt-get install -y python-software-properties && \
  add-apt-repository ppa:ubuntu-toolchain-r/test && \
  apt-get update && \
  apt-get remove -y gcc && \
  apt-get install -y gcc-4.8 && \
  update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50

RUN apt-get remove -y g++ && \
  apt-get install -y g++-4.8 && \
  update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50

# Add init scripts to the docker container and run them as the jenkins user
# This sets up rbenv/ruby and node for frontend builds
ADD init-scripts /etc/init-scripts
RUN export CXX=g++-4.8 && \
  su jenkins /etc/init-scripts/node-install.sh && \
  su jenkins /etc/init-scripts/rbenv-install.sh

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/frontend-12_04-ruby-2_3=""
