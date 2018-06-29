# Supported tags and respective `Dockerfile` links

* [`1.6.6`, `1.6`, `latest` (1.6/Dockerfile)](https://github.com/sticksnleaves/docker-elixir-project/blob/8fe681365cc71d868c8458dcdece4afbde66c97e/Dockerfile)
* [`1.5.3`, `1.5` (1.5/Dockerfile)](https://github.com/sticksnleaves/docker-elixir-project/blob/873821310a246daa9463e181db6211cabf04c9f3/Dockerfile)
* [`1.4.4`, `1.4`, (1.4/Dockerfile)](https://github.com/sticksnleaves/docker-elixir-project/blob/01c1fd4941a70f6b996d3232a6a8c7f3ef3b4ad6/Dockerfile)
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
