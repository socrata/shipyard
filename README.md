shipyard
========

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

### Build

Build all images in this project:

    $ bin/build

Build a single image from this project:

    $ bin/build [name]

### Images

- [socrata/base](base): Base ubuntu image with an extensible start script that establishes a pattern of /etc/start.d/ scripts
- [socrata/data](data): Basic data container

