FROM socrata/python

MAINTAINER Nick Kypreos <nick.kypreos@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-numpy python-scipy

# pip installations
RUN pip install geopy==1.5.0 \
    boto==2.36.0 \
    networkx==1.9.1 \
    nltk==3.0.0 \
    pandas==0.15.2 \
    paramiko==1.15.1 \
    scikit-learn==0.15.2 \
    sympy==0.7.6 \
    git+https://github.com/doomsuckle/sintervals.git \
    git+https://github.com/doomcrata/pycrata.git

# download nltk data
# looks for nltk_data inside home directory
RUN mkdir /user
ENV HOME /user
WORKDIR /user
RUN python -m nltk.downloader -d $HOME/nltk_data all
