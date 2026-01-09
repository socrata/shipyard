socrata/java8-jammy
====================

socrata/base-jammy image with OpenJDK *version 8* installed.

### Usage

Most uses of the image will be via `FROM socrata/java8-jammy` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java8-jammy

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java8-jammy bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8-jammy javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java8-jammy java -jar my_app.jar
