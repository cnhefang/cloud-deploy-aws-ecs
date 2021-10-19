ARG  BASE_VERSION=latest
FROM registry.gitlab.com/gitlab-org/cloud-deploy/aws-base:${BASE_VERSION}
LABEL MAINTAINER="cnhefang@gmail.com"
# Install packages
RUN apt-get update -y && apt-get install -y less git
COPY aws/src/bin/ecs /usr/local/bin/
RUN rm -f awscliv2.zip

