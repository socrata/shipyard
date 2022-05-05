socrata/python-binoic
=====================

socrata/base-bionic image with python 3.6 and pip installed.

### Usage

Most uses of the image will be via `FROM socrata/python3-bionic` in a Dockerfile, nonetheless, you can run a python shell as follows:

    $ docker pull socrata/python3-bionic

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python3-bionic python
