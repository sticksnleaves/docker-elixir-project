FROM elixir:1.3.4

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app

RUN mix local.hex --force

WORKDIR $APP_HOME
