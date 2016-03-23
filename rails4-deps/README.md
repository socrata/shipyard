socrata/rails4-deps
===================

socrata/ruby2.3 image with build tools, unicorn, dependency libraries, and gems

Intended for building the frontend project

### Usage

Most uses of the image will be via `FROM socrata/rails4-deps:2.3` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/rails4-deps:2.3

    # Launch shell in the container
    $ docker run --rm -t -i socrata/rails4-deps:2.3 bash
