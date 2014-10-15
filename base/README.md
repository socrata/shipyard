socrata/base
============

Base ubuntu image that establises a base set of patterns and tools for building other containers

### Features

- ship.d pattern: `ship` entrypoint to execute ship.d scripts
- [envconsul](https://github.com/hashicorp/envconsul) built-in: for creating environment variables based on consul k/v pairs
- dockerhost route: /etc/host route to the docker host (configurable, but defaults to the default route IP)
- env_parse: a tool for generating config files from jinja templates and environment variable

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

