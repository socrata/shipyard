shipyard
========

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

### Build

Build all images in this project:

    $ bin/build

Build a single image from this project:

    $ bin/build [name]

### Run

Any container built on top of the socrata/base image will default to running the whatever script is dropped in `/etc/start.d/run`. Alternatively, you can invoke any script dropped in /etc/start.d/ or any executable in the container via the CMD argument:

    $ docker run --rm -t -i socrata/base [CMD]

    # Examples:
    $ docker run --rm -t -i socrata/base run         # run is the default, so it's redundant here
    $ docker run --rm -t -i socrata/base bash        # launch a bash shell (on PATH)
    $ docker run --rm -t -i socrata/bash /bin/zsh    # launch a zsh shell (absolute)

    # Or if you build my_container `FROM socrata/base` and `ADD my_script /etc/start.d/`
    $ docker run --rm -t -i my_container my_script   # runs my_script in the container 


