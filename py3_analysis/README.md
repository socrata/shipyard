socrata/py3_analysis
===================

socrata/python3 image with numpy, scipy and scikit installed
Similar to the socrata/py_analysis image, but for python3.

### Usage

Most uses of the image will be via `FROM socrata/py3_analysis` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py3_analysis

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py3_analysis python
