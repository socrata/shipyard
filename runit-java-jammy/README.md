socrata/runit-java-jammy
====================

socrata/runit-jammy image with OpenJDK installed.

### Usage

Most uses of the image will be via `FROM socrata/runit-java-jammy:<version>` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/runit-java-jammy:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/runit-java-jammy:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-java-jammy:<version> javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-java-jammy:<version> java -jar my_app.jar

## Available versions

- `socrata/runit-java-jammy:11`
- `socrata/runit-java-jammy:17`
- `socrata/runit-java-jammy:25`

## runit
For more information on runit-based images, see [`socrata/runit-jammy`](../runit-jammy).
