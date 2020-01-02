FROM socrata/py3_analysis-bionic

RUN pip install spacy==0.101
# http://index.spacy.io/ is down
# See https://github.com/explosion/spaCy/issues/1405
# && python -m spacy.en.download

# LABEL must be last for proper base image discoverability
LABEL repository.socrata/py3_spacy-bionic=""
