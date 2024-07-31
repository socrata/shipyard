socrata/python-focal:3.11
=====================

socrata/base-focal image with python 3.11 and pip installed.

### Usage

Most uses of the image will be via `FROM socrata/python-focal:3.11` in a Dockerfile, nonetheless, you can run a python shell as follows:

    $ docker pull socrata/python-focal:3.11

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python-focal:3.11 python3.11
