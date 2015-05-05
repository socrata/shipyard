FROM socrata/base

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs npm
RUN npm install -g n
RUN n latest
RUN n io latest
