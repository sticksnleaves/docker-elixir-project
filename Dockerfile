FROM elixir:1.4.1

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app

RUN mix local.hex --force

WORKDIR $APP_HOME
