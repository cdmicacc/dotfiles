#!/bin/sh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$PATH:~/bin:/usr/local/share/npm/bin
export PS1="%B[%F{blue}%n%f@%F{74}%m%f %F{yellow}%~%f]%b "
export EDITOR=vim

alias wget='wget --no-check-certificate'
alias gs='git status'

export PATH=$PATH:/usr/local/bin:/usr/local/sbin
alias ls='gls --color'
alias chown=gchown

source ~/bin/git-commands
source ~/bin/pd.sh


export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/lib

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export ASDF_DIR=$(brew --prefix asdf)
. $(brew --prefix asdf)/asdf.sh

#complete -W "$(echo $(grep '^ssh ' ~/.bash_history | sort -u | sed 's/^ssh //'))" ssh

