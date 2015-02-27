FROM socrata/base

MAINTAINER Nick Kypreos <nick.kypreos@socrata.com>

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git  # for private pip libs
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libev4 libev-dev  # for cassandra-driver
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libpq-dev  # for psycopg2

RUN pip install blist==1.3.6
RUN pip install boto==2.36.0
RUN pip install cassandra-driver==2.1.4
RUN pip install elasticsearch==1.3.0
RUN pip install Flask==0.10.1
RUN pip install pep8==1.5.7
RUN pip install psycopg2==2.6
RUN pip install pytest==2.6.4
RUN pip install PyYAML==3.11
RUN pip install requests==2.2.1
RUN pip install tornado==4.1
RUN pip install vcrpy==1.2.0

RUN pip freeze
