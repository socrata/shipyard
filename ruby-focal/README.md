socrata/ruby-focal
===================

socrata/base-focal image with Ruby installed

## Usage

Most uses of the image will be via `FROM socrata/ruby-focal:<version>` in a Dockerfile, nonetheless, you can run a Ruby container as follows:

```bash
docker pull socrata/ruby-focal:<version>

# Launch shell in the container
docker run --rm -t -i socrata/ruby-focal:<version> bash

# Bind mount a directory into the container and build or run something
docker run --rm -t -i -v `pwd`:/opt/my_app socrata/ruby-focal:<version> ruby my_app.rb
```

## Available versions

- `socrata/ruby-focal:3.1.x`
- `socrata/ruby-focal:3.2.x`
