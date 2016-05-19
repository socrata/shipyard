socrata/py3_spacy
======================

socrata/py3_analysis with spacy-en installed

### Usage

Most uses of the image will be via `FROM socrata/py3_spacy` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py3_spacy

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py3_spacy python
