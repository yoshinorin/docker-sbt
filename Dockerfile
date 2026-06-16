# docker buildx imagetools inspect ghcr.io/yoshinorin/docker-scala:v3.8.4-25.0.3_9-jdk-noble
FROM ghcr.io/yoshinorin/docker-scala:v3.8.4-25.0.3_9-jdk-noble@sha256:645dc75a6d4ee1663f5ba90aef2593311b6265c99d37bf037601085673b43785

LABEL org.opencontainers.image.authors="yoshinorin"

ENV SBT_VERSION=1.12.10 \
    SBT_SHA256=cb23868a34fe2f4ce83c1ded7b0ab5efeba7de9a52f1e739b10b3ff8da844239

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
