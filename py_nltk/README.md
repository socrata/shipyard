socrata/py_nltk
===================

socrata/py_analysis image with nltk installed, along with nltk's stopwords, punkt, wordnet and maxent_treebank_pos_tagger.
The nltk data is stored at /home/socrata.

### Usage

Most uses of the image will be via `FROM socrata/py_nltk` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py_nltk

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py_nltk python
