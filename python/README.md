socrata/python
===============

socrata/base image with python 2.7 and pip installed

### Usage

Most uses of the image will be via `FROM socrata/python` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/python

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python python
