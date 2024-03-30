FROM ghcr.io/yoshinorin/docker-scala:v3.4.1-21.0.2_13-jdk-jammy

LABEL maintainer="yoshinorin"

ENV SBT_VERSION=1.9.9

RUN apt update -y \
 && apt upgrade -y \
 && curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz | tar xzf - -C /usr/local \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt \
 && rm /usr/local/sbt/bin/sbtn-aarch64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-pc-win32.exe \
 && apt autoremove \
 && apt clean
