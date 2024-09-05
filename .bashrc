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
alias gp='git push'
alias cc='make install clean'

alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

alias cp="cp -iv" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias bc="bc -ql" 
alias rsync="rsync -vrPlu" 
alias mkd="mkdir -pv" 
alias yt="yt-dlp --embed-metadata -i"
alias yta="yt -x -f bestaudio/best"
alias ytt="yt --skip-download --write-thumbnail"
alias ffmpeg="ffmpeg -hide_banner"
# Open PDF reader
alias p='zathura'

# PS1='\u@\h[\[\e[38;5;196;1m\]\w\[\e[0m\]]\\$ '
# PS1='\u@\[\e[2m\]\h\[\e[0m\][\[\e[97;1m\]\w\[\e[0m\]]\\$ '
# source ~/.local/share/blesh/ble.sh
PS1='\[\e[38;5;196m\][\[\e[38;5;227m\]\u\[\e[92m\]@\[\e[38;5;39m\]\h\[\e[0m\] \[\e[38;5;208;1m\]\W\[\e[0;38;5;196m\]]\[\e[0m\]\\$ '

