socrata/base-focal:ecs
============

Like the base Ubuntu image that establises a base set of patterns and
tools for building other containers except using Ubuntu 20.04

### Features

- ship.d pattern: `ship` entrypoint to execute ship.d scripts

See the usage section below

- env_parse:
A tool for generating config files from [jinja](http://jinja.pocoo.org/) templates and environment variables.

This script lets a service owner build configuration files that are created at run time from environment variables and a template file.  The template language is jinja and any template variables must be available as e  nvironment variables.  env_parse takes one argument, the template, and an optional argument for the output file.  If omitted, the output file is identical to the template file name with the trailing .j2 removed.

### Usage

Any container built on top of the socrata/base-focal:ecs image will default to running the whatever script is dropped in `/etc/ship.d/run`. Alternatively, you can invoke any script dropped in /etc/ship.d/ or any executable in the container via the CMD argument:

```bash
    $ docker pull socrata/base-focal:ecs
    $ docker run --rm -t -i socrata/base-focal:ecs [CMD]

    # Examples:
    $ docker run --rm -t -i socrata/base-focal:ecs # runs /etc/ship.d/run in the container
    $ docker run --rm -t -i socrata/base-focal:ecs bash        # launch a bash shell (on PATH)

    # From inside the container, launch the /etc/shipd.d/run
    docker-host$ ship [run]
```

### Example

Assuming we build an image called awesome_sauce from a Dockerfile like this:

```Dockerfile
    FROM socrata/base-focal:ecs
    ADD run /etc/ship.d/
    ADD migrate /etc/ship.d/
```

where the `run` script starts a service and `migrate` is a one-off script for performing migrations.

```bash
    $ docker run --rm -t -i awesome_sauce migrate   # runs the migrations from the container
    $ docker run --rm -t -i awesome_sauce           # starts the awesome_sauce service (via the `run` script)
```
