FROM ghcr.io/yoshinorin/docker-scala:v2.13.5.2

MAINTAINER yoshinorin

ENV SBT_VERSION=1.6.1

RUN curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt
