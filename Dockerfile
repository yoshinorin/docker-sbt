FROM ghcr.io/yoshinorin/docker-scala:v3.7.3-21.0.8_9-jdk-noble

LABEL maintainer="yoshinorin"

ENV SBT_VERSION=1.11.5

RUN apt update -y \
 && apt upgrade -y \
 && curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt \
 && rm -f /usr/local/sbt/bin/sbtn-aarch64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-pc-win32.exe \
 && apt autoremove -y \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
