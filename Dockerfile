FROM elixir:1.7.1

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app

RUN mix local.hex --force
RUN mix local.rebar --force

WORKDIR $APP_HOME
