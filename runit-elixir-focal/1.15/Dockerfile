FROM socrata/runit-focal AS base

# Set up environment
ENV LANG C.UTF-8
ENV ERLANG_OTP_VERSION 26.2.5.9
ENV ELIXIR_VERSION 1.15.8

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



RUN wget -O otp-src.tar.gz https://github.com/erlang/otp/releases/download/OTP-$ERLANG_OTP_VERSION/otp_src_$ERLANG_OTP_VERSION.tar.gz
RUN tar xzf otp-src.tar.gz
RUN cd otp_* && ./configure --prefix=/opt/erlang && make && make install

ENV PATH /opt/erlang/bin:$PATH

RUN wget -O elixir-src.tar.gz https://github.com/elixir-lang/elixir/archive/v$ELIXIR_VERSION.tar.gz
RUN tar xzf elixir-src.tar.gz
RUN cd elixir-* && env PREFIX=/opt/elixir make install

FROM base

COPY --from=build /opt/ /opt/

ENV PATH /opt/erlang/bin:/opt/elixir/bin:$PATH

# Add collectd config file
COPY collectd-socket.conf /etc/collectd/conf.d/socket.conf

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/runit-elixir-focal:1.15=""
