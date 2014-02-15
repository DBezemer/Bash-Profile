# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

if [ "$PS1" != "" -a "${STARTED_SCREEN:-x}" = x -a "${SSH_TTY:-x}" != x ]
then
  STARTED_SCREEN=1 ; export STARTED_SCREEN
  [ -d $HOME/log/screen-logs ] || mkdir -p $HOME/log/screen-logs
  sleep 1
  screen -RR -h 5000 && exit 0
  # normally, execution of this rc script ends here...
  echo "Screen failed! continuing with normal bash startup"
fi
# [end of auto-screen snippet]

export PATH
export EDITOR=nano

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '

RED='\e[1;31m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
WHITE='\e[1;37m'

export EDITOR=nano
export VISUAL=nano

export HISTCONTROL=ignoredups
export HISTFILESIZE=2000
export HISTIGNORE=
export HISTSIZE=1000
export HISTTIMEFORMAT="%h/%d -- %H:%M:%S "

PROMPT_COMMAND="history -a"
typeset -r PROMPT_COMMAND

clear
echo -ne ${RED}"Hello $USER, you are now logged in on $HOSTNAME ";echo "";
echo -e ${CYAN}'This baby is powered by:' `cat /etc/redhat-release` ;
echo -e "${WHITE}"; cal ;
echo -ne "${CYAN}Uptime for this server is ";uptime | awk /'up/ {print $3,$4}'

while sleep 10;do echo -ne '\033]2;'$USER@$HOSTNAME' '$(uptime)'\007';done &