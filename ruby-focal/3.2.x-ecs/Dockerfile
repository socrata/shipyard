FROM socrata/base-focal:ecs
MAINTAINER Socrata <sysadmin@socrata.com>

# skip installing gem documentation
RUN mkdir -p /usr/local/etc \
	&& { \
		echo 'install: --no-document'; \
		echo 'update: --no-document'; \
	} >> /usr/local/etc/gemrc

ENV RUBY_MAJOR 3.2

# some of ruby's build scripts are written in ruby
RUN set -ex \
	\
	&& buildDeps=' \
		libssl-dev \
		libreadline-dev \
		zlib1g-dev \
                git \
                libyaml-dev \
	'\
	&& apt-get update \
	&& apt-get install -y --no-install-recommends $buildDeps \
	&& rm -rf /var/lib/apt/lists/* \
	\
	&& git clone https://github.com/rbenv/ruby-build.git /tmp/ruby-build \
	\
	&& PREFIX=/usr/local /tmp/ruby-build/install.sh \
	\
        && ruby-build $(ruby-build -l | grep "^${RUBY_MAJOR}\.") /usr/local/ \
	&& rm -r /tmp/ruby-build/ \
        \
        && if [ -n "$BUNDLER_VERSION" ] ; then \
             gem install bundler:$BUNDLER_VERSION ;\
           fi

COPY ruby-version.rb /usr/local/bin/ruby-version.rb

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/ruby-focal:3.2.x-ecs=""
