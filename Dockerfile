FROM circleci/elixir:1.8.1

USER root

RUN apt-get update && apt-get install -y \
  pkgconf \
  libglfw3 \
  libglfw3-dev \
  libglew1.13 \
  libglew-dev \
  && rm -rf /var/lib/apt/lists/*
