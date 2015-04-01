socrata/java8
============

socrata/base image with Oracle Java *version 8* installed.

### Usage

Most uses of the image will be via `FROM socrata/java` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java8

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java8 bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8 javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8 java -jar my_app.jar
