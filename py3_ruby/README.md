socrata/py3_ruby
===============

socrata/base image with python 3.6, pip, and Ruby 2.4 installed.

### Usage

Most uses of the image will be via `FROM socrata/py3_ruby` in a Dockerfile, nonetheless, you can run commands as follows:

    $ docker pull socrata/py3_ruby

    # Launch shell in the container
    $ docker run --rm -t -i socrata/py3_ruby <do stuff!>
