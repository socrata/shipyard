socrata/java-runit-focal
====================

socrata/runit-focal image with OpenJDK installed.

### Usage

Most uses of the image will be via `FROM socrata/java-runit-focal:<version>` in a Dockerfile, nonetheless, you can run a java container as follows:

    $ docker pull socrata/java-runit-focal:<version>

    # Launch shell in the container
    $ docker run --rm -t -i socrata/java-runit-focal:<version> bash

    # Bind mount a directory into the container and build or run something
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-runit-focal:<version> javac my_app.java
    $ docker run --rm -t -i -v `pwd`:/opt/my_app socrata/java-runit-focal:<version> java -jar my_app.jar

## Available versions

- `socrata/java-runit-focal:11`
- `socrata/java-runit-focal:17`
