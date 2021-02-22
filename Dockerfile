FROM yoshinorin/docker-scala:2.13.4

MAINTAINER yoshinorin

ENV SBT_VERSION=1.4.7

RUN curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt
