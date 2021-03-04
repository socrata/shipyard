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
- [`socrata/nodejs-bionic`](nodejs-bionic): `socrata/base-bionic` image with `nodejs` and `npm` installed natively and a LTS version of Node.js installed in userspace via `n`, a Node.js version manager.
- [`socrata/runit-nodejs-bionic`](runit-nodejs-bionic): `socrata/runit-bionic` version of the above.

### Python

#### Python 2
- [`socrata/python-bionic`](python-bionic): `socrata/base-bionic` image with Python 2.7 and `pip` installed.

#### Python 3
- [`socrata/python3-bionic`](python3-bionic): `socrata/base-bionic` image with Python 3.6 and `pip` installed.

### Ruby
- [`socrata/ruby-bionic:2.5.3`](ruby-bionic/2.5.3): `socrata/base-bionic` image with Ruby 2.5.3 installed.
- [`socrata/ruby-bionic:2.6.5`](ruby-bionic/2.6.5): `socrata/base-bionic` image with Ruby 2.6.5 installed.
- [`socrata/ruby-bionic:2.7.2`](ruby-bionic/2.7.2): `socrata/base-bionic` image with Ruby 2.7.2 installed.
- [`socrata/ruby-bionic:3.0.0`](ruby-bionic/3.0.0): `socrata/base-bionic` image with Ruby 3.0.0 installed.
- [`socrata/runit-ruby-bionic:2.5.3`](runit-ruby-bionic/2.5.3): `socrata/runit-bionic` version of `socrata/ruby-bionic:2.5.3`.
- [`socrata/runit-ruby-bionic:2.7.2`](runit-ruby-bionic/2.7.2): `socrata/runit-bionic` version of `socrata/ruby-bionic:2.7.2`.
- [`socrata/runit-ruby-bionic:3.0.0`](runit-ruby-bionic/3.0.0): `socrata/runit-bionic` version of `socrata/ruby-bionic:3.0.0`.

## Removed as of 03-04-2021

### General
- [`socrata/base`](base): Base Ubuntu image that establises a base set of patterns and tools for building other containers.
- [`socrata/runit`](runit): Image based on `phusion/baseimage-docker` that establishes a base set of patterns and tools for building other containers with support for multiple processes via `runit`.

### Java
- [`socrata/java8`](java8): `socrata/base` image with  OpenJDK *version 8* installed.
- [`socrata/runit-java8`](runit-java8): `socrata/runit` version of the above.

### JavaScript
- [`socrata/nodejs`](nodejs): `socrata/base` image with `nodejs` and `npm` installed natively and a LTS version of Node.js installed in userspace via `n`, a Node.js version manager.
- [`socrata/runit-nodejs`](runit-nodejs): `socrata/runit` version of the above.

### Python 2
- [`socrata/python`](python): `socrata/base` image with Python 2.7 and `pip` installed.
- [`socrata/runit-python`](runit-python): `socrata/runit` version of the above.

### Python 3
- [`socrata/python3`](python3): `socrata/base` image with Python 3.4 and `pip` installed.
- [`socrata/py3_analysis`](py3_analysis): `socrata/python3` image with `numpy`, `scipy` and `scikit` installed. Similar to the `socrata/py_analysis` image, but for Python 3.
- [`socrata/py3_spacy`](py3_spacy): `socrata/py3_analysis` image with `spacy-en` installed.

### Ruby
- [`socrata/ruby:2.5.0`](ruby/2.5.0): `socrata/base` image with Ruby 2.5.0 installed.
- [`socrata/ruby:2.5.3`](ruby/2.5.3): `socrata/base` image with Ruby 2.5.3 installed.
- [`socrata/ruby:2.5.7`](ruby/2.5.7): `socrata/base` image with Ruby 2.5.7 installed.
- [`socrata/ruby:2.6.1`](ruby/2.6.1): `socrata/base` image with Ruby 2.6.1 installed.
- [`socrata/ruby:2.6.5`](ruby/2.6.5): `socrata/base` image with Ruby 2.6.5 installed.
- [`socrata/runit-ruby`](runit-ruby): Alias for `socrata/runit-ruby:2.3`.
- [`socrata/runit-ruby:2.2`](runit-ruby/2.2): `socrata/runit` version of `socrata/ruby:2.2`.
- [`socrata/runit-ruby:2.3`](runit-ruby/2.3): `socrata/runit` version of `socrata/ruby:2.3`.
- [`socrata/runit-ruby:2.3.5`](runit-ruby/2.3.5): `socrata/runit` version of `socrata/ruby:2.3.5`.
- [`socrata/runit-ruby:2.3.6`](runit-ruby/2.3.6): `socrata/runit` version of `socrata/ruby:2.3.6`.
- [`socrata/runit-ruby:2.5.0`](runit-ruby/2.5.0): `socrata/runit` version of `socrata/ruby:2.5.0`.
- [`socrata/runit-ruby:2.5.3`](runit-ruby/2.5.3): `socrata/runit` version of `socrata/ruby:2.5.3`.
- [`socrata/runit-ruby:2.5.7`](runit-ruby/2.5.7): `socrata/runit` version of `socrata/ruby:2.5.7`.
- [`socrata/runit-ruby:2.6.1`](runit-ruby/2.6.1): `socrata/runit` version of `socrata/ruby:2.6.1`.
- [`socrata/runit-ruby:2.6.5`](runit-ruby/2.6.5): `socrata/runit` version of `socrata/ruby:2.6.5`.

### Others
 - [`socrata/py3_ruby`](py3_ruby)
 - [`socrata/base-xenial`](base-xenial)
 - [`socrata/jenkins-worker`](jenkins-worker)
 