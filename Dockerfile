FROM circleci/elixir:1.8.1-node-browsers

USER root

RUN apt-get update && apt-get install -y \
  pkgconf \
  libglfw3 \
  libglfw3-dev \
  libglew2.0 \
  libglew-dev \
  && rm -rf /var/lib/apt/lists/*

USER circleci

CMD ["/bin/sh"]
