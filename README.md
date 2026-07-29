# sbt docker image

Docker image for sbt with Scala.

# Versions

- See:
  - [Releases (v1)](docs/RELEASES.v1.md)

# Build

```sh
// v1
docker buildx build --file Dockerfile.v1 .

// v2
docker buildx build --file Dockerfile.v2 .
```

# Usaga

```sh
docker run -it yoshinorin/docker-sbt:<version>
```