# shipyard

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

## Build

Build all images in this project:

    $ bin/build

Build a single image from this project, with support for specific versions:

    $ bin/build name[/x.x]

## Images

> For more information on runit-based images, see [`runit`](runit).

### General
- [`socrata/base`](base): Base Ubuntu image that establises a base set of patterns and tools for building other containers.
- [`socrata/data`](data): Basic data container that creates a `/data` volume.
- [`socrata/runit`](runit): Image based on `phusion/baseimage-docker` that establishes a base set of patterns and tools for building other containers with support for multiple processes via `runit`.

### Java
- [`socrata/java`](java): `socrata/base` image with Oracle Java installed
- [`socrata/java8`](java8): `socrata/base` image with Oracle Java *version 8* installed.
- [`socrata/runit-java8`](runit-java8): `socrata/runit` version of the above.

### JavaScript
- [`socrata/nodejs`](nodejs): `socrata/base` image with `nodejs` and `npm` installed natively and a LTS version of Node.js installed in userspace via `n`, a Node.js version manager.
- [`socrata/runit-nodejs`](runit-nodejs): `socrata/runit` version of the above.

### Python

#### Python 2
- [`socrata/python`](python): `socrata/base` image with Python 2.7 and `pip` installed.
- [`socrata/py_analysis`](py_analysis): `socrata/python` image with `numpy`, `scipy` and `scikit` installed.
- [`socrata/py_nltk`](py_nltk): `socrata/py_analysis` image with `nltk` installed, along with `nltk`'s stopwords, `punkt`, `wordnet` and `maxent_treebank_pos_tagger`.
- [`socrata/py_analyserver`](py_analyserver): `socrata/py_nltk` image with `Flask` and `flask-restful` installed.

#### Python 3
- [`socrata/python3`](python3): `socrata/base` image with Python 3.4 and `pip` installed.
- [`socrata/py3_analysis`](py3_analysis): `socrata/python3` image with `numpy`, `scipy` and `scikit` installed. Similar to the `socrata/py_analysis` image, but for Python 3.
- [`socrata/py3_spacy`](py3_spacy): `socrata/py3_analysis` image with `spacy-en` installed.

### Ruby
- [`socrata/ruby`](ruby): Alias for `socrata/ruby:2.1`.
- [`socrata/ruby:2.1`](ruby/2.1): `socrata/base` image with Ruby 2.1 installed.
- [`socrata/ruby:2.2`](ruby/2.2): `socrata/base` image with Ruby 2.2 installed.
- [`socrata/ruby:2.3`](ruby/2.3): `socrata/base` image with Ruby 2.3 installed.
#### The following images are locked to these x.y.z versions
- [`socrata/ruby:2.3.5`](ruby/2.3.5): `socrata/base` image with Ruby 2.3.5 installed.
- [`socrata/ruby:2.3.6`](ruby/2.3.6): `socrata/base` image with Ruby 2.3.6 installed.
- [`socrata/ruby:2.5.0`](ruby/2.5.0): `socrata/base` image with Ruby 2.5.0 installed.
- [`socrata/ruby:2.3-admin`](ruby/2.3-admin): `socrata/base` image with Ruby 2.3 installed and a few dependencies specifically for admin team.
- [`socrata/runit-ruby`](runit-ruby): Alias for `socrata/runit-ruby:2.3`.
- [`socrata/runit-ruby:2.2`](runit-ruby/2.2): `socrata/runit` version of `socrata/ruby:2.2`.
- [`socrata/runit-ruby:2.3`](runit-ruby/2.3): `socrata/runit` version of `socrata/ruby:2.3`.
#### The following images are locked to these x.y.z versions
- [`socrata/runit-ruby:2.3.5`](runit-ruby/2.3.5): `socrata/runit` version of `socrata/ruby:2.3.5`.
- [`socrata/runit-ruby:2.3.6`](runit-ruby/2.3.6): `socrata/runit` version of `socrata/ruby:2.3.6`.
- [`socrata/runit-ruby:2.5.0`](runit-ruby/2.5.0): `socrata/runit` version of `socrata/ruby:2.5.0`.
- [`socrata/rails4-deps`](rails4-deps): `socrata/ruby2.3` image with build tools, `unicorn`, dependency libraries, and gems.
