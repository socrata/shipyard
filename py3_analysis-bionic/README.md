socrata/py3_analysis-bionic
===========================

socrata/python3 image with numpy, scipy and scikit installed
Similar to the socrata/py_analysis image, but for python3.

### Usage

Most uses of the image will be via `FROM socrata/py3_analysis-bionic` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py3_analysis-bionic

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py3_analysis-bionic python
