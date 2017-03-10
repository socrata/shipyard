FROM socrata/golang

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install rsync nodejs npm && \
    npm -g install react-tools && \
    ln -nsf /usr/bin/nodejs /usr/bin/node

RUN go get github.com/etsy/hound/cmds/...

COPY config.json /hound/
ADD ship.d /etc/ship.d
EXPOSE 6080

