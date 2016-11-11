FROM socrata/runit

# Set up environment
ENV LANG C.UTF-8

# Add erlang solutions repo
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install wget && \
    wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    DEBIAN_FRONTEND=noninteractive dpkg -i erlang-solutions_1.0_all.deb

# Install erlang & elixir
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install esl-erlang elixir
