if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a gs git status
abbr -a ga git add -A
abbr -a gc git commit
abbr -a gp git push
abbr -a nv nvim
abbr -a cc doas make install clean

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

