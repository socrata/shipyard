socrata/base
============

Base ubuntu image with an extensible `/bin/ship` script that establishes a pattern of `/etc/ship.d/` scripts

### Usage

Any container built on top of the socrata/base image will default to running the whatever script is dropped in `/etc/ship.d/run`. Alternatively, you can invoke any script dropped in /etc/ship.d/ or any executable in the container via the CMD argument:

    $ docker pull socrata/base
    $ docker run --rm -t -i socrata/base [CMD]

    # Examples:
    $ docker run --rm -t -i socrata/base             # runs /etc/ship.d/run in the container 
    $ docker run --rm -t -i socrata/base bash        # launch a bash shell (on PATH)

    # From inside the container, launch the /etc/shipd.d/run
    docker-host$ ship [run]

### Example

Assuming we build an image called awesome_sauce from a Dockerfile like this:

    FROM socrata/base
    ADD run /etc/ship.d/
    ADD migrate /etc/ship.d/

where the `run` script starts a service and `migrate` is a one-off script for performing migrations.

    $ docker run --rm -t -i awesome_sauce migrate   # runs the migrations from the container
    $ docker run --rm -t -i awesome_sauce           # starts the awesome_sauce service (via the `run` script)

