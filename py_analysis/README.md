socrata/py_analysis
===================

socrata/python image with numpy, scipy and scikit installed

### Usage

Most uses of the image will be via `FROM socrata/py_analysis` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py_analysis

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py_analysis python
