FROM ashenm/baseimage

# avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

# avoid python bytecode
ENV PYTHONDONTWRITEBYTECODE=0

# revert exclusion of man pages
RUN echo '# override man page and documentation page exclusion' | \
    tee -a /etc/dpkg/dpkg.cfg.d/includes && \
  echo 'path-include=/usr/share/doc/*' | \
    tee -a /etc/dpkg/dpkg.cfg.d/includes && \
  echo 'path-include=/usr/share/man/*' | \
    tee -a /etc/dpkg/dpkg.cfg.d/includes && \
  apt-get update && dpkg -l | grep ^ii | cut -d' ' -f3 | \
    xargs apt-get install --yes --no-install-recommends --reinstall && \
  rm -rf /var/lib/apt/lists/*

# install development packages
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
    man && \
  rm -rf /var/lib/apt/lists/*

# default execute login shell
CMD ["bash", "--login"]
