FROM socrata/python

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-numpy python-scipy

RUN pip install pycmd==1.1.0 \
                pytest==2.6.4 \
                scikit-learn==0.15.2
