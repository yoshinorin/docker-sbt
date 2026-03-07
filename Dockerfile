FROM ghcr.io/yoshinorin/docker-scala:v3.8.2-25.0.2_10-jdk-noble

LABEL maintainer="yoshinorin"

ENV SBT_VERSION=1.12.4
ENV SBT_SHA256=3a02d4cd9867fce25982f9b168c245ff4e478dd769415db542e5beeb9f9fb87a

RUN apt update -y \
 && apt upgrade -y \
 && curl -sL https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz -o /tmp/sbt.tgz \
 && echo "${SBT_SHA256} /tmp/sbt.tgz" | sha256sum -c - || { echo "ERROR: SHA256 checksum mismatch for sbt-${SBT_VERSION}.tgz. Expected: ${SBT_SHA256}"; exit 1; } \
 && tar xzf /tmp/sbt.tgz -C /usr/local \
 && rm /tmp/sbt.tgz \
 && ln -s /usr/local/sbt/bin/sbt /usr/local/bin/sbt \
 && rm -f /usr/local/sbt/bin/sbtn-aarch64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-apple-darwin /usr/local/sbt/bin/sbtn-x86_64-pc-win32.exe \
 && apt autoremove -y \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
