FROM ubuntu:22.04
MAINTAINER Fröjd
LABEL org.opencontainers.image.source https://github.com/frojd/dockerimages

ARG DEBIAN_FRONTEND=noninteractive

ARG ERLANG_VERSION
ENV ERLANG_VERSION ${ERLANG_VERSION:-25.3}

ARG ELIXIR_VERSION
ENV ELIXIR_VERSION ${ELIXIR_VERSION:-1.15.7-otp-25}

ARG ASDF_VERSION
ENV ASDF_VERSION ${ASDF_VERSION:-v0.20.0}

RUN apt-get update -y && apt-get install -y \
  curl \
  git \
  unzip \
  locales

# Ensure that we always use UTF-8 and with en_US locale
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

# Install asdf (a prebuilt binary, since asdf v0.16 it is no longer a shell script)
RUN set -e; \
  url="https://github.com/asdf-vm/asdf/releases/download/${ASDF_VERSION}/asdf-${ASDF_VERSION}-linux-amd64.tar.gz"; \
  for i in 1 2 3 4 5; do \
    curl -fsSL -o /tmp/asdf.tar.gz "$url" && break; \
    [ "$i" = 5 ] && echo "Failed to download asdf from $url" >&2 && exit 1; \
    sleep 5; \
  done; \
  tar -xzf /tmp/asdf.tar.gz -C /usr/local/bin asdf; \
  rm /tmp/asdf.tar.gz
ENV ASDF_DATA_DIR=/root/.asdf
ENV PATH=$PATH:/root/.asdf/shims

RUN asdf plugin add erlang https://github.com/michallepicki/asdf-erlang-prebuilt-ubuntu-22.04.git
RUN asdf install erlang $ERLANG_VERSION
RUN asdf set -u erlang $ERLANG_VERSION

RUN asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
RUN asdf install elixir $ELIXIR_VERSION
RUN asdf set -u elixir $ELIXIR_VERSION

RUN mix local.hex --force && mix local.rebar --force

CMD ["iex"]
