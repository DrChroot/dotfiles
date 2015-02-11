alias edit='zile'
alias st='stterm # -f <font name> -g <geometry>'

alias upd='sudo apt update'
alias upg='sudo apt update && sudo apt dist-upgrade'
alias purge='sudo apt-get purge'
alias brc='nano ~/.bashrc'
alias sshchat='ssh jaroslav@104.236.98.95'
alias search='apt search'
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt install'

## Space on drive
alias disk='du -S | sort -n -r |more'

# search
alias where="which"
alias what="apropos"
alias apr="apropos"
alias ff="find . -type f -name"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias fonts="cd /usr/share/fonts"
alias scripts="cd $HOME/scripts"

#### SAFETY ####
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias shred='shred -n 100 -z -v -u'

#### REBOOT/SHUTDOWN ####
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias suspend='sudo pm-suspend'

alias ls='ls -F --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -l'

alias grep='grep --color=auto'

alias md='mkdir -p -v'
alias rd='rmdir -v'

alias manb='man -H'
