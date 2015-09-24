FROM socrata/golang

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install rsync nodejs npm && \
    npm -g install react-tools && \
    ln -nsf /usr/bin/nodejs /usr/bin/node

RUN git clone --depth 1 https://github.com/etsy/hound.git hound/src/github.com/etsy/hound \
    && cd hound \
    && src/github.com/etsy/hound/tools/setup \
    && make \
    && export GOPATH=$GOPATH:/go/hound \
    && go-wrapper install github.com/etsy/hound/cmds/houndd

COPY config.json /hound/
ADD ship.d /etc/ship.d
EXPOSE 6080

