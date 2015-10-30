# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jaro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U promptinit
promptinit
autoload -U colors && colors
prompt redhat
# PROMPT=' %B%F{blue}» %f'
# RPROMPT='%B%F{black}%~ %B%F{red}%#'

alias upd='sudo apt update'
alias upg='sudo apt-get upgrade'
alias purge='sudo apt purge'
# alias zrc='nano ~/.zshrc'
alias search='apt-cache search'
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt install'
alias disk='du -S | sort -n -r |more'
alias where="which"
alias what="apropos"
alias apr="apropos"
alias ff="find . -type f -name"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias fonts="cd /usr/share/fonts"
alias scripts="cd $HOME/scripts"
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias shred='shred -n 100 -z -v -u'
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias ls='ls -F --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -l'
alias grep='grep --color=auto'
alias md='mkdir -p -v'
alias rd='rmdir -v'
alias manb='man -H'
