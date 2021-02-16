socrata/ruby-bionic
===================

socrata/base-bionic image with Ruby installed

## Usage

Most uses of the image will be via `FROM socrata/ruby-bionic:<version>` in a Dockerfile, nonetheless, you can run a Ruby container as follows:

```bash
docker pull socrata/ruby-bionic:<version>

# Launch shell in the container
docker run --rm -t -i socrata/ruby-bionic:<version> bash

# Bind mount a directory into the container and build or run something
docker run --rm -t -i -v `pwd`:/opt/my_app socrata/ruby-bionic:<version> ruby my_app.rb
```

## Available versions

- `socrata/ruby-bionic:2.5.3`
- `socrata/ruby-bionic:2.6.5`
- `socrata/ruby-bionic:2.7.2`
- `socrata/ruby-bionic:3.0.0`
