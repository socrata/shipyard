FROM socrata/base-bionic
MAINTAINER Socrata <sysadmin@socrata.com>

# skip installing gem documentation
RUN mkdir -p /usr/local/etc \
	&& { \
		echo 'install: --no-document'; \
		echo 'update: --no-document'; \
	} >> /usr/local/etc/gemrc

ENV RUBY_MAJOR 2.7

# Allow installing a specific version of bundler if needed
ARG BUNDLER_VERSION=2.2.33

# some of ruby's build scripts are written in ruby
#   we purge system ruby later to make sure our final image uses what we just built
RUN set -ex \
	\
	&& buildDeps=' \
		libssl-dev \
		libreadline-dev \
		zlib1g-dev \
                git \
	'\
	&& apt-get update \
	&& apt-get install -y --no-install-recommends $buildDeps \
	&& rm -rf /var/lib/apt/lists/* \
	\
	&& git clone https://github.com/rbenv/ruby-build.git /tmp/ruby-build \
	\
	&& PREFIX=/usr/local /tmp/ruby-build/install.sh \
	\
        && ruby-build $(ruby-build --definitions | grep "^${RUBY_MAJOR}\." | sort --version-sort | tail -n 1) /usr/local/ \
        && rm -r /tmp/ruby-build/ \
        && if [ -n "$BUNDLER_VERSION" ] ; then \
          mv $(ruby -e 'puts File.join(Gem.default_dir,"specifications","default")')/*bundler*.gemspec $(ruby -e 'puts File.join(Gem.default_dir, "specifications")') \
          && gem uninstall bundler \
          && gem install bundler:$BUNDLER_VERSION ;\
        fi

COPY ruby-version.rb /usr/local/bin/ruby-version.rb

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/ruby2.7.x=""
