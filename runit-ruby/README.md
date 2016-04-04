socrata/runit-ruby
============

socrata/runit image with Ruby installed

### Usage

Most uses of the image will be via `FROM socrata/runit-ruby:<version>` in a Dockerfile, nonetheless, you can run a Ruby container as follows:

    $ docker pull socrata/runit-ruby:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/runit-ruby:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-ruby:<version> ruby my_app.rb


### Available versions

- `socrata/runit-ruby` _alias for `socrata/runit-ruby:2.3`_
- `socrata/runit-ruby:2.2`
- `socrata/runit-ruby:2.3`
