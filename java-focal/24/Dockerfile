FROM socrata/base-focal
ENV SOCRATA_JAVA_VERSION 24.0.2

ENV SDKMAN_DIR /opt/sdkman
RUN curl -s "https://get.sdkman.io?ci=true&rcupdate=false" | bash && \
    bash -c "source /opt/sdkman/bin/sdkman-init.sh && \
             sdk install java ${SOCRATA_JAVA_VERSION}-open"
ENV PATH "/opt/sdkman/candidates/java/current/bin:$PATH"

# Regenerate certs to work around bug in ca-certificates-java that results in missing Java certs
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=775775
RUN update-ca-certificates -f

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/java-focal:24=""
