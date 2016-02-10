Docker files for jenkins-slave-lucid docker image
=============================================================

## Docker build

To build the image, run `docker build -t jenkins-slave-lucid .` from this directory.

_NOTE: there is one dependency that has to be resolved manually, the JDK for Java 1.7._ This can be downloaded from the Oracle website, but unfortunately there is not a Lucid repository that apt can use to download this automatically.

## Organization
The beginning steps of this Dockerfile are based off of the `evarga/jenkins-slave` image.

The later steps are currently specific to the Frontend build. In the future it would be useful to seperate this into a base image for all jenkins slaves and language or team specific docker images that have the necessary dependencies baked in.
