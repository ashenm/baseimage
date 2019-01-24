# set editor
export EDITOR=vim

# if not root
if [ `id -u` -ne 0 ]
then

  # defult 700
  umask 0077

  # protect user
  alias cp='cp -i'
  alias mv='mv -i'
  alias rm='rm -i'

  # directory listing
  alias l='ls -CF'
  alias la='ls -A'
  alias ll='ls -alF'
  alias ls='ls --color=auto -F'

  # git
  alias st='git status'
  alias push='git push'
  alias log='git log --oneline'
  alias pull='git pull --rebase'
  alias commit='git add --all; git commit'

  # vim
  alias vi='vim'
  alias vim='vim -p'

fi

# message of the day
clear
cat /etc/motd
