FROM socrata/runit-focal AS base

# Set up environment
ENV LANG C.UTF-8

# Install Java 8. If we start using this image for things other than
# one app, we might want to revisit this.
#
# The update-ca-certs call is to work around a bug in
# ca-certificates-java that results in missing Java certs
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=775775
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy install software-properties-common && \
  DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:openjdk-r/ppa && apt-get -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-8-jdk && \
  mkdir -p /opt && \
  update-ca-certificates -f

FROM base AS build

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget libncurses-dev libssl-dev

RUN mkdir /build /opt/erlang /opt/elixir
WORKDIR /build

RUN wget https://github.com/erlang/otp/releases/download/OTP-25.0.3/otp_src_25.0.3.tar.gz
RUN tar xzf otp_src_25.0.3.tar.gz
RUN cd otp_src_25.0.3 && ./configure --prefix=/opt/erlang && make && make install

ENV PATH /opt/erlang/bin:$PATH

RUN wget https://github.com/elixir-lang/elixir/archive/v1.13.4.tar.gz
RUN tar xzf v1.13.4.tar.gz
RUN cd elixir-1.13.4 && env PREFIX=/opt/elixir make install

FROM base

COPY --from=build /opt/ /opt/

ENV PATH /opt/erlang/bin:/opt/elixir/bin:$PATH

# Add collectd config file
COPY collectd-socket.conf /etc/collectd/conf.d/socket.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-elixir-focal=""
