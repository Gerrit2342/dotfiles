# Created by newuser for 5.9
export MANPAGER="nvim +Man!"

autoload -U colors && colors	# Load colors

LS_COLORS="di=1;35:*m4a=0;31"
export LS_COLORS

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
setopt inc_append_history


setopt auto_cd
# Extended globbin (matching)
setopt extended_glob

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Some aliases
alias nv='nvim'
alias ps='pacman -Ss'
alias pS='pacman -S'

# git
alias gs='git status'
alias ga='git add -A'
alias gc='git commit'
alias gp='git push'
alias cc='sudo make install clean'

# Options for system commands
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"

alias cp="cp -iv" 
alias mv="mv -iv" 
alias rm="rm -vI" 
alias bc="bc -ql" 
alias rsync="rsync -vrPlu" 
alias mkd="mkdir -pv" 

# Some other aliases
alias yt="yt-dlp --embed-metadata -i"
alias yta="yt -x -f m4a"
alias ytt="yt --skip-download --write-thumbnail"

alias ffmpeg="ffmpeg -hide_banner"
# Open PDF reader
alias p='zathura'

# PS1='\u@\h[\[\e[38;5;196;1m\]\w\[\e[0m\]]\\$ '
# PS1='\u@\[\e[2m\]\h\[\e[0m\][\[\e[97;1m\]\w\[\e[0m\]]\\$ '
# source ~/.local/share/blesh/ble.sh
#PS1='\[\e[38;5;196m\][\[\e[38;5;227m\]\u\[\e[92m\]@\[\e[38;5;39m\]\h\[\e[0m\] \[\e[38;5;208;1m\]\W\[\e[0;38;5;196m\]]\[\e[0m\]\\$ '
PROMPT="%F{red}[%f%F{226}%n%f%F{10}@%f%F{75}%m%f %B%F{214}%~%f%b%F{red}]%f$ "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey '^R' history-incremental-search-backward

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
