FROM socrata/base

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install nodejs npm
RUN npm install -g n
RUN n latest
RUN n io latest

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/nodejs=""
