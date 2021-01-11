#
# ~/.bashrrcc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias vim='nvim'
alias vi='nvim'
alias img='feh'
alias iphonet='sudo ip link set enp0s20f0u4c4i2 up'
alias niphonet='sudo ip link set enp0s20f0u4c4i2 down'
alias dhcpcd='sudo systemctl start dhcpcd'
alias ndhcpcd='sudo systemctl stop dhcpcd'
alias fdiskl='sudo fdisk -l | grep "Disk /dev"'
alias gittree='git log --oneline --all --graph'

# Created by `userpath` on 2020-11-29 13:39:02
export PATH="$PATH:/home/ping/.local/bin"
export PATH="$PATH:/home/ping/mybin"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="think-arch \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
