shipyard
========

An open-sourced collection of docker images that probably don't merit their own git repo, but serve as building blocks or one-off utilities.

### Build

Build all images in this project:

    $ bin/build

Build a single image from this project:

    $ bin/build [name]

### Images

- [socrata/data](data): Basic data container
- [socrata/base](base): Base ubuntu image with an extensible `/bin/ship` script that establishes a pattern of `/etc/ship.d/` scripts
- [socrata/java](java): Socrata/base image with Oracle Java installed
