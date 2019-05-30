FROM ubuntu:18.04

# avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

# configure environment
ENV TERM xterm

# install prerequisite packages
# for environment configuration
# and generate environment locales
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    apt-transport-https \
    apt-utils \
    gnupg-agent \
    language-pack-en \
    locales \
    software-properties-common && \
  locale-gen en_US en_US.UTF-8 && \
  dpkg-reconfigure locales && \
  rm -rf /var/lib/apt/lists/*

# set environment locales
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US:en

# install common essentials
RUN add-apt-repository -y ppa:git-core/ppa && \
  apt-get update && \
  apt-get install --yes --no-install-recommends \
    build-essential \
    curl \
    git \
    less \
    tmux \
    unzip \
    vim \
    zip && \
  rm -rf /var/lib/apt/lists/*

# revise system defaults
RUN sed --in-place --regexp-extended 's/^( *)(alias l.*)/\1#\2/' /etc/skel/.bashrc

# configure system
COPY etc /etc/

# set working directory
# to root user's home
WORKDIR /root

# default execute login shell
CMD ["bash", "--login"]
