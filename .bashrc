#!/bin/sh

export GOPATH=~/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:~/bin:/usr/local/share/npm/bin
export PS1="[\u@\h \w] "
export EDITOR=vim

alias wget='wget --no-check-certificate'
alias z=zeus
alias gs='git status'

source ~/bin/git-commands

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib

complete -W "$(echo $(grep '^ssh ' ~/.bash_history | sort -u | sed 's/^ssh //'))" ssh
