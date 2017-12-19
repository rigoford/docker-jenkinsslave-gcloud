# docker-jenkinsslave-gcloud

Jenkins Slave docker image, based off [garethjevans/jenkinsslave-alpine](https://hub.docker.com/r/garethjevans/jenkinsslave-alpine/), with [Google Cloud SDK](https://cloud.google.com/sdk/) and [Terraform](https://www.terraform.io/) installed

This is available on Docker hub as [garethjevans/jenkinsslave-gcloud](https://hub.docker.com/r/garethjevans/jenkinsslave-gcloud/)

## Usage

To create a basic Jenkins Google Cloud Slave instance use:

```
docker run \
    --detach \
    --env JENKINS_MASTER=<JENKINS_MASTER_ADDRESS> \
    --env JENKINS_USERNAME=<JENKINS_USERNAME> \
    --env JENKINS_PASSWORD=<JENKINS_PASSWORD> \
    --env JENKINS_EXECUTORS=1 \
    --env JENKINS_LABELS=gcloud \
    --env JENKINS_NAME=gcloud-slave \
    --env LANG=C.UTF-8 \
    --name jenkins_gcloud \
    --volume /etc/localtime:/etc/localtime:ro \
    garethjevans/jenkinsslave-gcloud:latest
```

Obviously, you'll need an instance of Jenkins Master as well, try [garethjevans/jenkins](https://hub.docker.com/r/garethjevans/jenkins/).
