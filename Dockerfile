FROM ghcr.io/yoshinorin/docker-scala:v3.8.3-25.0.2_10-jdk-noble

LABEL org.opencontainers.image.authors="yoshinorin"

ENV SBT_VERSION=1.12.6
ENV SBT_SHA256=c546b0591039017adde7f340e8ef9f86b9152ee90cfabb29850b8284d1c820af

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
