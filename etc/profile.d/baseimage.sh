# standard envs
export SHELL

# set editor
export EDITOR=vim

# directory listing
alias l='ls -C'
alias la='ls -A'
alias ll='ls -Al'
alias ls='ls --classify --color=auto'

# if not root
if [ `id -u` -ne 0 ]
then

  # defult 700
  umask 0077

  # protect user
  alias cp='cp -i'
  alias mv='mv -i'
  alias rm='rm -i'

  # git
  alias push='git push'
  alias log='git log --oneline'
  alias pull='git pull --rebase'
  alias commit='git add --all; git commit'
  alias st='git status --ignored'

  # vim
  alias vi='vim'
  alias vim='vim -p'

fi

# message of the day
clear
cat /etc/motd
