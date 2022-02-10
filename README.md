# shipyard

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

## Build

Build all images in this project:

    $ bin/build

Build a single image from this project, with support for specific versions:

    $ bin/build name[/x.x]

## Images

> For more information on runit-based images, see [`runit-bionic`](runit-bionic).

### General
- [`socrata/base-bionic`](base-bionic): Base Ubuntu image that establises a base set of patterns and tools for building other containers.
- [`socrata/runit-bionic`](runit-bionic): Image based on `phusion/baseimage-docker` that establishes a base set of patterns and tools for building other containers with support for multiple processes via `runit`.

### Java
- [`socrata/java8-bionic`](runit-java8-bionic): `socrata/base-bionic` image with  OpenJDK *version 8* installed.
- [`socrata/runit-java8-bionic`](runit-java8-bionic): `socrata/runit-bionic` version of the above.

### JavaScript
- [`socrata/runit-nodejs-bionic`](runit-nodejs-bionic): `socrata/runit-bionic` image with `nodejs` and `npm` installed

### Python

#### Python 2
- [`socrata/python-bionic`](python-bionic): `socrata/base-bionic` image with Python 2.7 and `pip` installed.

#### Python 3
- [`socrata/python3-bionic`](python3-bionic): `socrata/base-bionic` image with Python 3.6 and `pip` installed.

### Ruby
- [`socrata/ruby-bionic:2.6.5`](ruby-bionic/2.6.5): `socrata/base-bionic` image with Ruby 2.6.5 installed.
- [`socrata/ruby-bionic:2.6.x`](ruby-bionic/2.6.x): `socrata/base-bionic` image with the latest point release under Ruby 2.6.
- [`socrata/ruby-bionic:2.7.2`](ruby-bionic/2.7.2): `socrata/base-bionic` image with Ruby 2.7.2 installed.
- [`socrata/runit-ruby-bionic:2.7.2`](runit-ruby-bionic/2.7.2): `socrata/runit-bionic` version of `socrata/ruby-bionic:2.7.2`.
- [`socrata/ruby-bionic:2.7.x`](ruby-bionic/2.7.x): `socrata/base-bionic` image with the latest point release under Ruby 2.7.
- [`socrata/runit-ruby-bionic:2.7.x`](runit-ruby-bionic/2.7.x): `socrata/runit-bionic` version of `socrata/ruby-bionic:2.7.x`.
- [`socrata/ruby-bionic:3.0.x`](ruby-bionic/3.0.x): `socrata/base-bionic` image with the latest point release under Ruby 3.0.
- [`socrata/runit-ruby-bionic:3.0.x`](runit-ruby-bionic/3.0.x): `socrata/runit-bionic` version of `socrata/ruby-bionic:3.0.x`.
- [`socrata/ruby-bionic:3.1.x`](ruby-bionic/3.1.x): `socrata/base-bionic` image with the latest point release under Ruby 3.1.
- [`socrata/runit-ruby-bionic:3.1.x`](runit-ruby-bionic/3.1.x): `socrata/runit-bionic` version of `socrata/ruby-bionic:3.1.x`.
