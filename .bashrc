#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\033[1;34m\]┌─[\[\033[1;32m\]\u\[\033[1;34m\]@\[\033[1;32m\]\h\[\033[1;34m\]]─[\[\033[1;35m\]\w\[\033[1;34m\]]─[\[\033[1;36m\]\t\[\033[1;34m\]]$(if git branch &>/dev/null; then echo "─[\[\033[1;33m\]$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[1;34m\]]"; fi)\n\[\033[1;34m\]└─[\[\033[1;31m\]\$\[\033[1;34m\]]\[\033[0m\] '

echo -e '\e[H\e[2J
          \e[0;36m.
         \e[0;36m/ \
        \e[0;36m/   \      
       \e[0;36m/^.   \           \e[1;37m_             _     
      \e[0;36m/  .-.  \         \e[1;37m/ \   _ __ ___| |__     
     \e[0;36m/  (   ) _\       \e[1;37m/ _ \ |  __/ __|  _ \    \e[1;36m _     _  __  _  __ __ __  __
    \e[1;36m/ _.~   ~._^\     \e[1;37m/ ___ \| | | (__| | | |   \e[1;36m| |__ | ||  \| ||  |  |\ \/ /
   \e[1;36m/.^         ^.\   \e[1;37m/_/   \_\_|  \___|_| |_|   \e[1;36m|____||_||_|\__| \___/ /_/\_\
'

current_hour=$(date +%H)

if [ "$current_hour" -ge 5 ] && [ "$current_hour" -lt 12 ]; then
    greeting="\033[1;33mGood morning\033[0m"
elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 18 ]; then
    greeting="\033[1;36mGood afternoon\033[0m"
else
    greeting="\033[1;35mGood evening\033[0m"
fi

echo -e "$greeting, \033[1;32m$(whoami)\033[0m!"
echo -e "\033[0;37m$(date '+%d/%m/%Y %H:%M:%S')\033[0m\n"
