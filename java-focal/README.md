socrata/java-focal
====================

socrata/base-focal image with OpenJDK installed.
Versions available:
 - 11
 - 17

### Usage

Most uses of the image will be via `FROM socrata/java-focal:<version>` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java-focal:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java-focal:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-focal:<version> javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-focal:<version> java -jar my_app.jar

## Available versions

- `socrata/java-focal:11`
- `socrata/java-focal:17`
