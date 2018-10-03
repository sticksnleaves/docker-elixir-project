FROM elixir:1.7.3-alpine

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app

RUN mix local.hex --force && \
    mix local.rebar --force

RUN apk add --no-cache git && \
    apk add --no-cache build-base

WORKDIR $APP_HOME
