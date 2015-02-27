FROM socrata/python

MAINTAINER Nick Kypreos <nick.kypreos@socrata.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-numpy python-scipy

# pip installations
RUN pip install geopy==1.5.0
RUN pip install networkx==1.9.1
RUN pip install nltk==3.0.0
RUN pip install pandas==0.15.2
RUN pip install paramiko==1.15.1
RUN pip install scikit-learn==0.15.2
RUN pip install sympy==0.7.6

# some specialties... 
RUN pip install git+https://github.com/doomsuckle/sintervals.git
RUN pip install git+https://github.com/doomcrata/pycrata.git

RUN pip freeze

# download nltk data
# looks for nltk_data inside home directory
RUN mkdir /user
ENV HOME /user
WORKDIR /user
RUN python -m nltk.downloader -d $HOME/nltk_data all
