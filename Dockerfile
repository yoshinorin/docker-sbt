FROM yoshinorin/docker-scala:2.13.1

MAINTAINER YoshinoriN

ENV SBT_VERSION=1.3.9

RUN curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt
