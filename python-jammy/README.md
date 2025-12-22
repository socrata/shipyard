socrata/python-jammy
=====================

socrata/base-jammy image with python 3.10 or 3.11 and pip installed.

### Usage

Most uses of the image will be via `FROM socrata/python-jammy` in a Dockerfile, nonetheless, you can run a python shell as follows:

    $ docker pull socrata/python3-jammy

    # Launch shell in the container
    $ docker run --rm -t -i socrata/python3-jammy python

Available tags:
- `socrata/python-jammy:3.10`
- `socrata/python-jammy:3.11`
