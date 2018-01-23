FROM yoshinorin/docker-scala:2.12.4

MAINTAINER YoshinoriN

ENV SBT_VERSION=1.1.0

RUN apt-get update \
 && curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt \
 && sbt exit \
 && apt-get autoremove \
 && apt-get autoclean
