FROM ubuntu:18.04

# configure environment
ENV TERM xterm

# configure locales
RUN DEBIAN_FRONTEND=noninteractive && \
  apt-get update && apt-get install -y locales language-pack-en && \
  locale-gen en_US en_US.UTF-8 && dpkg-reconfigure locales && \
  rm -rf /var/lib/apt/lists/*
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US:en

# install common essentials
RUN DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:git-core/ppa && \
  apt-get update && \
  apt-get install -y \
    apt-transport-https \
    build-essential \
    curl \
    git \
    tmux \
    unzip \
    vim \
    zip \
  && rm -rf /var/lib/apt/lists/*

# configure system
COPY etc /etc/

# set working directory
# to root user's home
WORKDIR /root

# default execute login shell
CMD ["bash", "--login"]
