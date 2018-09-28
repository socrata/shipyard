FROM socrata/base-bionic

RUN DEBIAN_FRONTEND=noninteractive \
        apt-get -y update && \
        apt-get -y install openjdk-8-jdk

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/java8-bionic=""
