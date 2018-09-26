socrata/rails5-deps
===================

socrata/ruby2.3.x images with build tools, unicorn, dependency libraries, and gems

Intended for building the frontend project

### Usage

Most uses of the image will be via `FROM socrata/rails5-deps:2.3.x` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/rails5-deps:2.3.x

    # Launch shell in the container
    $ docker run --rm -t -i socrata/rails5-deps:2.3.x bash
