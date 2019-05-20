socrata/chronos
============

Chronos image based on our base image.  

All configuration is passed in via `CHRONOS_FOO_BAR=taz` style environment variables, which the chronos
wrapper automatically maps to the same thing as `--foo-bar=taz`.

We are not currently worrying about versioning this image because chronos is currently an almost dead
project so updates will be very infrequent.
