FROM ubuntu:20.04
MAINTAINER Fröjd

ARG DEBIAN_FRONTEND=noninteractive

ARG ERLANG_VERSION
ENV ERLANG_VERSION ${ERLANG_VERSION:-25.3}

ARG ELIXIR_VERSION
ENV ELIXIR_VERSION ${ELIXIR_VERSION:-1.15.7-otp-25}

RUN apt-get update -y && apt-get install -y \
  curl \
  git \
  unzip \
  locales

# Ensure that we always use UTF-8 and with en_US locale
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

# Install asdf
RUN git clone --depth 1 https://github.com/asdf-vm/asdf.git ~/.asdf
ENV PATH="$PATH:/root/.asdf/bin"
ENV PATH="$PATH:/root/.asdf/bin"
ENV PATH=$PATH:/root/.asdf/shims

RUN asdf plugin-add erlang https://github.com/michallepicki/asdf-erlang-prebuilt-ubuntu-20.04.git
RUN asdf install erlang $ERLANG_VERSION
RUN asdf global erlang $ERLANG_VERSION

RUN asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
RUN asdf install elixir $ELIXIR_VERSION
RUN asdf global elixir $ELIXIR_VERSION

RUN mix local.hex --force && mix local.rebar --force

CMD ["iex"]
