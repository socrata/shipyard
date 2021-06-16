FROM socrata/python3-bionic

RUN python -m pip install -U pip && \
    pip install spacy scikit-learn

# NOTE: this old version of spacy no longer downloads the data associated with the library version
RUN curl https://sa-clads-us-west-2-staging.s3-us-west-2.amazonaws.com/data/spacy-data-1.1.0.tgz -o /usr/local/lib/python3.6/dist-packages/spacy/spacy-data-1.1.0.tgz
RUN tar -zxf /usr/local/lib/python3.6/dist-packages/spacy/spacy-data-1.1.0.tgz -C /usr/local/lib/python3.6/dist-packages/spacy/

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/py3_spacy-bionic=""
