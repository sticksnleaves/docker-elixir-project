FROM erlang:21-alpine

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV ELIXIR_VERSION="v1.7.4"
ENV LANG=C.UTF-8

ENV APP_HOME /usr/src/app

RUN set -xe \
      && OTP_MAJOR_VERSION=${OTP_VERSION:0:2} \
      && ELIXIR_DOWNLOAD_URL="https://repo.hex.pm/builds/elixir/${ELIXIR_VERSION}-otp-${OTP_MAJOR_VERSION}.zip" \
      && ELIXIR_DOWNLOAD_SHA256="f68ec78f93b995332bda461ab5bc039b521889a7c43dcde0c734ca4da878d922" \
      && buildDeps=' \
		          ca-certificates \
		          curl \
		          unzip \
	    ' \
      && apk add --no-cache --virtual .build-deps $buildDeps \
      && curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL \
      && echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - \
      && unzip -d /usr/local elixir-precompiled.zip \
      && rm elixir-precompiled.zip \
      && apk del .build-deps

RUN apk add --no-cache git && \
    apk add --no-cache build-base && \
    apk add --no-cache bash

RUN mix local.hex --force && \
    mix local.rebar --force

WORKDIR $APP_HOME
