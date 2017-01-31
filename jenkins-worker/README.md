Docker files for jenkins-worker docker images
=============================================================

## Organization
The beginning steps of this Dockerfile are based off of the `evarga/jenkins-slave` image.

The later steps are currently specific to the Frontend build. In the future it would be useful to seperate this into a base image for all jenkins slaves and language or team specific docker images that have the necessary dependencies baked in.

## Frontend build worker

To apply changes to this Dockerfile to the frontend build worker:

1. Update Dockerfile
2. `docker build -t http://registry.docker.aws-us-west-2-infrastructure.socrata.net:5000/internal/jenkins-worker_base:latest`
3. `docker push http://registry.docker.aws-us-west-2-infrastructure.socrata.net:5000/internal/jenkins-worker_base:latest`
4. SSH into the Jenkins host and pull down the new image: 
`docker pull http://registry.docker.aws-us-west-2-infrastructure.socrata.net:5000/internal/jenkins-worker_base:latest`
5. Manually trigger or wait for scheduled run of the `build-worker_frontend` job
