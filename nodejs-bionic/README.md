socrata/nodejs-bionic

socrata/base-bionic image with nodejs and npm installed natively and the latest
of io.js and node installed in userspace with n, a node package
manager.

### Usage

Most uses of the image will be via `FROM socrata/nodejs-bionic` in a Dockerfile, nonetheless,
you can get to run a node console command in the console as follows:

    $ docker pull socrata/nodejs-bionic

    # Launch shell in the container
    $ docker run --rm -t -i socrata/nodejs-bionic node
