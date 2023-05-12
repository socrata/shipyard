FROM socrata/base-focal

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-11-jdk && update-java-alternatives -s java-1.11.0-openjdk-amd64

# Regenerate certs to work around bug in ca-certificates-java that results in missing Java certs
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=775775
RUN update-ca-certificates -f

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/java-focal:11=""
