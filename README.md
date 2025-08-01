# sbt docker image

Docker image for sbt with Scala.

# Version

|version|OS|JDK|Scala|sbt|
|---|---|---|---|---|
|v1.1.0|Debian|8u151-jdk|2.12.4|1.1.0|
|v1.1.4|Debian|8u151-jdk|2.12.5|1.1.4|
|v1.2.8|Debian|openjdk11|2.12.8|1.2.8|
|v1.2.8.2|Debian|openjdk11|2.12.9|1.2.8|
|v1.3.3|Ubuntu(bionic)|adoptopenjdk:11.0.4|2.13.0|1.3.3|
|v1.3.9|Ubuntu(bionic)|adoptopenjdk:11.0.6|2.13.1|1.3.9|
|v1.3.13|Ubuntu(bionic)|adoptopenjdk:11.0.6|2.13.3|1.3.13|
|v1.4.5|Ubuntu(bionic)|adoptopenjdk:11.0.8|2.13.4|1.4.5|
|v1.4.7|Ubuntu(bionic)|adoptopenjdk:11.0.8|2.13.4|1.4.7|
|v1.5.5|Ubuntu(bionic)|adoptopenjdk:11.0.8|2.13.5|1.5.5|
|v1.6.1|Ubuntu(focal)|adoptopenjdk:11.0.9|2.13.5|1.6.1|
|v1.6.2|Ubuntu(focal)|eclipse-temurin:17.0.2_8-jre|2.13.6|1.6.2|
|v1.7.1|Ubuntu(focal)|eclipse-temurin:17.0.3_7-jre|2.13.8|1.7.1|
|v1.7.1.2|Ubuntu(jammy)|eclipse-temurin:17.0.4.1_1-jdk|2.13.8|1.7.1|
|v1.7.3|Ubuntu(jammy)|eclipse-temurin:17.0.4.1_1-jdk|2.13.10|1.7.3|
|v1.8.0|Ubuntu(jammy)|eclipse-temurin:17.0.5_8-jdk|2.13.10|1.8.0|
|v1.8.0-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.5_8-jdk|3.2.1|1.8.0|
|v1.8.2-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.7_7-jdk|3.2.2|1.8.2|
|v1.9.0-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.7_7-jdk|3.2.2|1.9.0|
|v1.9.0.1-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.7_7-jdk|3.3.0|1.9.0|
|v1.9.3-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.8_7-jdk|3.3.0|1.9.3|
|v1.9.4-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.8_7-jdk|3.3.0|1.9.4|
|v1.9.6-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.8_7-jdk|3.3.1|1.9.6|
|v1.9.7-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.8_7-jdk|3.3.1|1.9.7|
|v1.9.7.2-scala3|Ubuntu(jammy)|eclipse-temurin:17.0.9_9-jdk|3.3.1|1.9.7|
|v1.9.7-scala3-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.1_12-jdk|3.3.1|1.9.7|
|v1.9.8-scala3.3.3-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.2_13-jdk|3.3.3|1.9.8|
|v1.9.9-scala3.4.0-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.2_13-jdk|3.4.0|1.9.9|
|v1.9.9-scala3.4.1-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.2_13-jdk|3.4.1|1.9.9|
|v1.10.0-scala3.4.1-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.2_13-jdk|3.4.1|1.10.0|
|v1.10.0-scala3.4.2-jdk21|Ubuntu(jammy)|eclipse-temurin:21.0.2_13-jdk|3.4.2|1.10.0|
|v1.10.1-scala3.4.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.4_7-jdk|3.4.2|1.10.1|
|v1.10.1-scala3.5.0-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.4_7-jdk|3.5.0|1.10.1|
|v1.10.2-scala3.5.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.5.2|1.10.2|
|v1.10.3-scala3.5.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.5.2|1.10.3|
|v1.10.4-scala3.5.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.5.2|1.10.4|
|v1.10.5-scala3.6.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.6.2|1.10.5|
|v1.10.6-scala3.6.2-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.6.2|1.10.6|
|v1.10.7-scala3.6.3-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.5_11-jdk|3.6.3|1.10.7|
|sbt [v1.10.8 is dead](https://github.com/sbt/sbt/releases/tag/v1.10.8)| - | - | - |1.10.8|
|v1.10.9-scala3.6.4-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.6_7-jdk|3.6.4|1.10.9|
|v1.10.10-scala3.6.4-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.6_7-jdk|3.6.4|1.10.10|
|v1.10.11-scala3.6.4-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.6_7-jdk|3.6.4|1.10.11|
|v1.10.11-scala3.7.0-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.7_6-jdk|3.7.0|1.10.11|
|v1.11.0-scala3.7.1-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.7_6-jdk|3.7.1|1.11.0|
|v1.11.1-scala3.7.1-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.7_6-jdk|3.7.1|1.11.1|
|v1.11.2-scala3.7.1-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.7_6-jdk|3.7.1|1.11.2|
|v1.11.3-scala3.7.1-jdk21|Ubuntu(noble)|eclipse-temurin:21.0.7_6-jdk|3.7.1|1.11.3|

# Usaga

```sh
docker run -it yoshinorin/docker-sbt:<version>
```