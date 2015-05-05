socrata/nodejs

socrata/base image with nodejs(0.10.25) and npm installed natively and the latest
of io.js (2.0.0) and node (0.12.2) installed in userspace with n, a node package 
manager.

### Usage

Most uses of the image will be via `FROM socrata/nodejs` in a Dockerfile, nonetheless,
you can get to run a node console command in the console as follows:

    $ docker pull socrata/nodejs

    # Launch shell in the container
    $ docker run --rm -t -i socrata/nodejs node
