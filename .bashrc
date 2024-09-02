# This is my bashrc
# ~/.bashrc
#
export MANPAGER="nvim +Man!"

LS_COLORS="di=1;35:ln=31"
export LS_COLORS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias ps='pacman -Ss'
alias pS='pacman -S'

# git
alias gs='git status'
alias ga='git add -A'
alias gc='git commit'
# PS1='[\u@\h \W]\$ '
# Open PDF reader
alias p='zathura'

#PS1='\u@\h[\[\e[38;5;196;1m\]\w\[\e[0m\]]\\$ '
PS1='\u@\[\e[2m\]\h\[\e[0m\][\[\e[97;1m\]\w\[\e[0m\]]\\$ '
source ~/.local/share/blesh/ble.sh
