socrata/runit-java-focal
====================

socrata/runit-focal image with OpenJDK installed.

### Usage

Most uses of the image will be via `FROM socrata/runit-java-focal:<version>` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/runit-java-focal:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/runit-java-focal:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-java-focal:<version> javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/runit-java-focal:<version> java -jar my_app.jar

## Available versions

- `socrata/runit-java-focal:11`
- `socrata/runit-java-focal:17`

## runit
For more information on runit-based images, see [`socrata/runit-focal`](runit-focal).
