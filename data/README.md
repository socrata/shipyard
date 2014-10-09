socrata/data
===========

Basic data container that creates a `/data` volume

### Usage

Start a data container that hosts the `/data` volume for a given service.

    $ docker pull socrata/data
    $ docker run --name my_data socrata/data
    $ MY_SERVICE=`docker run --volumes-from my_data my_service`
    
    # Now we can stop, remove, and relaunch my_service and the data will stay in tact
    $ docker stop $MY_SERVICE
    $ docker rm $MY_SERVICE
    $ docker run --volumes-from my_data myservice
    
    # Data will be lost once the data container is removed:
    $ docker rm my_data
