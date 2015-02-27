socrata/java
============

socrata/base image with numpy-ready python installed along with nltk data and a series of other python 
libraries.

### Usage

Most uses of the image will be via `FROM socrata/python` in a Dockerfile:

    $ docker pull socrata/python

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python bash
