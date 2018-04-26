FROM ubuntu:16.04

# configure environment
ENV TERM xterm

# configure locales
# https://github.com/docker-library/postgres/blob/61e369ce3738e38386fa01ce4809c2304e76257c/9.6/Dockerfile#L31-L34
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
  && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ENV LC_ALL en_US.utf8

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
