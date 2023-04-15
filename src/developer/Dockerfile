ARG BASEIMAGE=ashenm/baseimage:latest

FROM ${BASEIMAGE}

# avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

# avoid python bytecode
ENV PYTHONDONTWRITEBYTECODE=0

# revert exclusion of man pages
# install development packages
RUN yes | unminimize && \
  apt-get install --yes --no-install-recommends \
    man && \
  rm -rf /var/lib/apt/lists/*

# default execute login shell
CMD ["bash", "--login"]
