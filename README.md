# Supported tags and respective `Dockerfile` links

* [`1.4.2`, `1.4`, `latest` (1.4/Dockerfile)](https://github.com/sticksnleaves/docker-elixir-project/blob/99d540f9c57f8439db4a7e0af9626eafabcf9f9e/Dockerfile)
* [`1.3.4`, `1.3` (1.3/Dockerfile)](https://github.com/sticksnleaves/docker-elixir-project/blob/13e093b5cbc2866a26c2578d94312a08faa60f8a/Dockerfile)

# What is this image?

`sticksnleaves/elixir-project` is a Docker image used for building
[Elixir](http://elixir-lang.org/) based projects at
[Sticksnleaves](http://www.sticksnleaves.com).

# How to use this image

This image should primarily be used as a project's base image. When used with
`compose` this can be specified as the services `image`.

`/usr/src/app` is exposed at the images `WORKDIR`. All project files should
be contained within this directory. Most likely you want to mount this directory
as a local `volume`.

## Example `docker-compose.yml`

```
version: '2'
services:
  app:
    image: sticksnleaves/elixir-project:latest
    volumes:
      - .:/usr/src/app
```
