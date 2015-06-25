FROM socrata/base

ENV GOROOT /goroot
ENV GOPATH /gopath

# Install Go dependencies
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git wget

# Install gpm
RUN wget https://raw.githubusercontent.com/pote/gpm/v1.3.2/bin/gpm && chmod +x gpm && mv gpm /usr/local/bin

# Install Go
RUN \
  mkdir -p $GOROOT && \
  curl https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar xvzf - -C $GOROOT --strip-components=1

# Set environment variables.
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# Define working directory.
WORKDIR $GOPATH
