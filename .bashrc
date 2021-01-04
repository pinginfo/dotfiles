#
# ~/.bash_profile
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias vim='nvim'
alias vi='nvim'
alias pdf='zathura'
alias img='feh'

# Created by `userpath` on 2020-11-29 13:39:02
export PATH="$PATH:/home/ping/.local/bin"
export PATH="$PATH:/home/ping/mybin"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="arch \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

if command -v tmux >/dev/null 2>&1 && [ "${DISPLAY}" ]; then
    # if not inside a tmux session, and if no session is started, start a new session
    [ -z "${TMUX}" ] && (tmux attach >/dev/null 2>&1 || tmux)
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
