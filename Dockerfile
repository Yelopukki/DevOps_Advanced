FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    docker.io \
    git \
    curl \
    ca-certificates \
    && apt-get clean

RUN usermod -aG docker jenkins

USER jenkins
