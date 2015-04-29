socrata/py_analyserver
======================

socrata/py_nltk image with Flask and flask-restful installed

### Usage

Most uses of the image will be via `FROM socrata/py_analyserver` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/py_analyserver

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py_analyserver python
