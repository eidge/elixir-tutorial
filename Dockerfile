FROM ubuntu:14.04
MAINTAINER Hugo Ribeira <hugoribeira@gmail.com>

# Install a few utilities
RUN apt-get update && \
    apt-get install -y curl wget procps && \
    rm -rf /var/lib/apt/lists/*

# Add erlang repositories
RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    sudo dpkg -i erlang-solutions_1.0_all.deb

# Install Elixir
RUN apt-get update && \
    apt-get install -y elixir

# Use utf-8
RUN locale-gen --purge en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

CMD bash
