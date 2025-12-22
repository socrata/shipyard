socrata/java-jammy
====================

socrata/base-jammy image with OpenJDK installed.

### Usage

Most uses of the image will be via `FROM socrata/java-jammy:<version>` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java-jammy:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java-jammy:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-jammy:<version> javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-jammy:<version> java -jar my_app.jar

## Available versions

- `socrata/java-jammy:11`
- `socrata/java-jammy:17`
- `socrata/java-jammy:25`
