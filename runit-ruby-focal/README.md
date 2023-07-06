socrata/runit-ruby-focal
============

socrata/runit-focal image with Ruby installed

### Usage

Most uses of the image will be via `FROM socrata/runit-ruby-focal:<version>` in a Dockerfile, nonetheless, you can run a Ruby container as follows:

    $ docker pull socrata/runit-ruby-focal:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/runit-ruby-focal:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-ruby-focal:<version> ruby my_app.rb


### Available versions

- `socrata/runit-ruby-focal:3.0.x`
- `socrata/runit-ruby-focal:3.1.x`
- `socrata/runit-ruby-focal:3.2.x`

## runit
For more information on runit-based images, see [`socrata/runit-focal`](../runit-focal).
