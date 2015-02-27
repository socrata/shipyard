FROM socrata/base

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python python-dev python-pip python-numpy python-scipy
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libev4 libev-dev # for cassandra-driver
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libpq-dev  # for psycopg2

# pip installations
RUN pip install blist==1.3.6
RUN pip install boto==2.36.0
RUN pip install cassandra-driver==2.1.4
RUN pip install elasticsearch==1.3.0
RUN pip install Flask==0.10.1
RUN pip install geopy==1.5.0
RUN pip install networkx==1.9.1
RUN pip install nltk==3.0.0
RUN pip install pandas==0.15.2
RUN pip install paramiko==1.15.1
RUN pip install pep8==1.5.7
RUN pip install psycopg2==2.6
RUN pip install pytest==2.6.4
RUN pip install PyYAML==3.11
RUN pip install requests==2.2.1
RUN pip install scikit-learn==0.15.2
RUN pip install sympy==0.7.6
RUN pip install tornado==4.1
RUN pip install vcrpy==1.2.0

# some specialties... 
RUN pip install git+https://github.com/doomsuckle/sintervals.git
RUN pip install git+https://github.com/doomcrata/pycrata.git

RUN pip freeze

# download nltk data
# looks for nltk_data inside home directory
RUN mkdir /user
ENV HOME /user
WORKDIR /user
RUN python -m nltk.downloader -d $HOME/nltk_data stopwords
RUN python -m nltk.downloader -d $HOME/nltk_data punkt
RUN python -m nltk.downloader -d $HOME/nltk_data wordnet
