socrata/runit-ruby-bionic
============

socrata/runit-bionic image with Ruby installed

### Usage

Most uses of the image will be via `FROM socrata/runit-ruby-bionic:<version>` in a Dockerfile, nonetheless, you can run a Ruby container as follows:

    $ docker pull socrata/runit-ruby-bionic:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/runit-ruby-bionic:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-ruby-bionic:<version> ruby my_app.rb


### Available versions

- `socrata/runit-ruby-bionic` _alias for `socrata/runit-ruby-bionic:2.7.2`_
- `socrata/runit-ruby-bionic-2.5.3`
- `socrata/runit-ruby-bionic-2.7.2` _alias for `socrata/runit-ruby-bionic:2.7.2`_
- `socrata/runit-ruby-bionic:2.7.2`
- `socrata/runit-ruby-bionic-3.0.0` _alias for `socrata/runit-ruby-bionic:3.0.0`_
- `socrata/runit-ruby-bionic:3.0.0`
