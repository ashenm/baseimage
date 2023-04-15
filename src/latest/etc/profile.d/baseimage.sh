##################################################
#
# Baseimage Shell Initialisation
# https://github.com/ashenm/baseimage
#
# Ashen Gunaratne
# mail@ashenm.ml
#
##################################################

# standard envs
export SHELL

# pinentry-curses
export GPG_TTY=`tty`

# message of the day
clear
cat /etc/motd
