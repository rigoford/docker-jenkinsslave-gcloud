FROM garethjevans/jenkinsslave:v1.2.3-alpine

ENV GCLOUD_SDK_VERSION=125.0.0
ENV GCLOUD_SDK_URL=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_SDK_VERSION}-linux-x86_64.tar.gz

# install curl and gcloud
#    /bin/bash -l -c "source /root/.bashrc && echo Y | gcloud components install kubectl && exit" && \
#    rm -rf /opt/google-cloud-sdk/.install/.backup
RUN apk update
RUN apk add curl openssl python python-dev

RUN mkdir -p /opt && cd /opt && \
    wget -q -O - $GCLOUD_SDK_URL |tar zxf -
#RUN /opt/google-cloud-sdk/install.sh -q

WORKDIR /root

