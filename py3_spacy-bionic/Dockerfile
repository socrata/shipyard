FROM socrata/python3-bionic

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libblas-dev liblapack-dev && \
    ln -s /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h /usr/include/xlocale.h

RUN pip install numpy==1.11.0 && \
    pip install scipy==0.17.1 && \
    pip install scikit-learn==0.17.1 && \
    pip install spacy==0.101

# NOTE: this old version of spacy no longer downloads the data associated with the library version
RUN curl https://sa-clads-us-west-2-staging.s3-us-west-2.amazonaws.com/data/spacy-data-1.1.0.tgz -o /usr/local/lib/python3.6/dist-packages/spacy/spacy-data-1.1.0.tgz
RUN tar -zxf /usr/local/lib/python3.6/dist-packages/spacy/spacy-data-1.1.0.tgz -C /usr/local/lib/python3.6/dist-packages/spacy/

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/py3_spacy-bionic=""
