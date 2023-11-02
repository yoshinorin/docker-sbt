FROM ghcr.io/yoshinorin/docker-scala:v3.3.1.2

LABEL maintainer="yoshinorin"

ENV SBT_VERSION=1.9.7

RUN apt update -y \
 && apt upgrade -y \
 && curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt \
 && apt autoremove \
 && apt clean
