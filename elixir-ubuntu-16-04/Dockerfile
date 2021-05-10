FROM ubuntu:16.04
MAINTAINER Fröjd

ARG ELIXIR_VERSION
ENV ELIXIR_VERSION ${ELIXIR_VERSION:-1.6.6-1}

RUN apt-get update && apt-get -y install wget sudo \
    && apt-get -y install git ssh ca-certificates locales \
    && wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb

# Ensure that we always use UTF-8 and with en_US locale
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

RUN apt-get update \
    && apt-get -y install esl-erlang elixir=$ELIXIR_VERSION \
    && rm -rf /var/lib/apt/lists/*

RUN mix local.hex --force && mix local.rebar --force

CMD ["iex"]
