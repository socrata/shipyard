socrata/rails3-deps
===================

socrata/ruby:1.9 image with build tools, unicorn, dependency libraries, and gems

Intended for building the frontend project into

### Usage

Most uses of the image will be via `FROM socrata/rails3-deps` in a Dockerfile, nonetheless, you can run a container as follows:

    $ docker pull socrata/rails3-deps

    # Launch shell in the container
    $ docker run --rm -t -i socrata/rails3-deps bash
