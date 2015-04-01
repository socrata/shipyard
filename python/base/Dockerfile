FROM socrata/base

MAINTAINER Nick Kypreos <nick.kypreos@socrata.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -y build-essential \
    python-dev \
    python-pip \
    git \
    libev4 \
    libev-dev \
    libpq-dev

RUN pip install blist==1.3.6 \
    cassandra-driver==2.1.4 \
    elasticsearch==1.3.0 \
    Flask==0.10.1 \
    pep8==1.5.7 \
    psycopg2==2.6 \
    pytest==2.6.4 \
    PyYAML==3.11 \
    requests==2.2.1 \
    tornado==4.1 \
    vcrpy==1.2.0
