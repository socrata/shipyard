Docker files for jenkins-worker docker images
=============================================================

## Organization
The beginning steps of this Dockerfile are based off of the `evarga/jenkins-slave` image.

The later steps are currently specific to the [Platform-UI](https://github.com/socrata/platform-ui) build. In the future it would be useful to seperate this into a base image for all jenkins slaves and language or team specific docker images that have the necessary dependencies baked in.

## Frontend build worker

To apply changes to this Dockerfile to the frontend build worker:

1. Update Dockerfile
2. `docker build -t 649617362025.dkr.ecr.us-west-2.amazonaws.com/internal/jenkins-worker_base:latest`
3. `docker push 649617362025.dkr.ecr.us-west-2.amazonaws.com/internal/jenkins-worker_base:latest`
4. SSH into the Jenkins host and pull down the new image
5. `docker pull 649617362025.dkr.ecr.us-west-2.amazonaws.com/internal/jenkins-worker_base:latest`
6. Manually trigger or wait for scheduled run of the `build-worker_frontend` job

  Update Worker-Dockerfile
  - follow the same steps as above but make sure to build `jenkins-worker_base:latest_worker` and `jenkins-worker_frontend:latest_worker`
  - This dockerfile build is for use on the Jenkins workers whereas the Dockerfile version is for use on the Jenkins server.  They require different users and user ids
