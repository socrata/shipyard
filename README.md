shipyard
========

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

### Build

Build all images in this project:

    $ bin/build

Build a single image from this project, with support for specific versions:

    $ bin/build name[/x.x]

### Images

- [socrata/data](data): Basic data container that creates a `/data` volume
- [socrata/base](base): Base ubuntu image that establises a base set of patterns and tools for building other containers
- [socrata/java](java): socrata/base image with Oracle Java installed
- [socrata/java8](java8): socrata/base image with Oracle Java *version 8* installed.
- [socrata/nodejs](nodejs): socrata/base image with nodejs and npm installed natively and the latest of io.js and node installed in userspace with n, a node package manager.
- [socrata/py3_analysis](py3_analysis): socrata/python3 image with numpy, scipy and scikit installed. Similar to the socrata/py_analysis image, but for python3.
- [socrata/py3_spacy](py3_spacy): socrata/py3_analysis with spacy-en installed
- [socrata/py_analyserver](py_analyserver): socrata/py_nltk image with Flask and flask-restful installed
- [socrata/py_analysis](py_analysis): socrata/python image with numpy, scipy and scikit installed
- [socrata/py_nltk](py_nltk): socrata/py_analysis image with nltk installed, along with nltk's stopwords, punkt, wordnet and maxent_treebank_pos_tagger.
- [socrata/python](python): socrata/base image with python 2.7 and pip installed
- [socrata/python3](python3): socrata/base image with python 3.4 and pip installed.
- [socrata/rails4-deps](rails4-deps): socrata/ruby2.3 image with build tools, unicorn, dependency libraries, and gems
- [socrata/ruby](ruby): Alias for [socrata/ruby:2.1](ruby/2.1)
- [socrata/ruby:2.1](ruby/2.1): socrata/base image with Ruby 2.1 installed
- [socrata/ruby:2.2](ruby/2.2): socrata/base image with Ruby 2.2 installed
- [socrata/ruby:2.3](ruby/2.3): socrata/base image with Ruby 2.3 installed
- [socrata/runit](runit): Image based on phusion/baseimage-docker that establises a base set of patterns and tools for building other containers with support for multiple processes via runit.
- [socrata/runit-java8](runit-java8): Image based on phusion/baseimage-docker that establises a base set of patterns and tools for building other containers with support for multiple processes via runit. This image is packaged with Oracle Java *version 8* installed.
- [socrata/runit-nodejs](runit-nodejs): Image based on phusion/baseimage-docker that establises a base set of patterns and tools for building other containers with support for multiple processes via runit. This image is packaged with Oracle Java *version 8* installed.
- [socrata/runit-ruby](runit-ruby): Alias for [socrata/runit-ruby:2.3](runit-ruby/2.3)
- [socrata/runit-ruby:2.2](runit-ruby/2.2): socrata/runit image with Ruby 2.2 installed
- [socrata/runit-ruby:2.3](runit-ruby/2.3): socrata/runit image with Ruby 2.3 installed
