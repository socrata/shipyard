socrata/python-focal
=====================

socrata/base-focal image with python 3.11 and pip installed.

### Usage

Most uses of the image will be via `FROM socrata/python3.11-focal` in a Dockerfile, nonetheless, you can run a python shell as follows:

    $ docker pull socrata/python3.11-focal

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python3.11-focal python3.11
