socrata/base-bionic-python2
===============

socrata/base image with python 3.6 and pip installed

### Usage

Most uses of the image will be via `FROM socrata/base-bionic-python3` in a Dockerfile, nonetheless, you can run a python shell as follows:

    $ docker pull socrata/base-bionic-python3

    # Launch shell in the container
    $ docker run --rm -t -i socrata/base-bionic-python3 python
