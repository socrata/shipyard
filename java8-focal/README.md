socrata/java8-focal
====================

socrata/base-focal image with OpenJDK *version 8* installed.

### Usage

Most uses of the image will be via `FROM socrata/java8-focal` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java8-focal

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java8-focal bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8-focal javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8-focal java -jar my_app.jar
