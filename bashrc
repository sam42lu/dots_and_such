#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# git: aliases and custom prompt in repo
alias epic="git"
parse_git_branch(){
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# linux system
alias ll='ls -laGh'
alias ls='ls --color=auto'
get_time(){
  date '+%I:%M:%S'
}

#set terminal >
PS1='\[\e[1;34m\]#\[\e[1;31m\]$(get_time)\[\e[1;34m\]$(parse_git_branch)#\[\e[1;31m\]\w\[\e[1;34m\]#'

# set path and any other system variables'

#neo fetch is the best
neofetch --ascii_colors 27 51

