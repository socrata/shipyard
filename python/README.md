socrata/python
============

Contains python base docker image and some special heavier python images.
socrata/base image with basic python packages listed in python/base/Dockerfile to be pulled in a docker
containers as socrata/python.


python/animl is a numpy-ready python installed along with some nltk data (required to run code in nltk) and a series of other python 
libraries.

### Usage

Most uses of the image will be via `FROM socrata/python` in a Dockerfile:

    $ docker pull socrata/python

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python bash
