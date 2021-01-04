#
# ~/.bash_profile
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
