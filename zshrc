# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew cake gem npm osx redis-cli zsh-syntax-highlighting bower per-directory-history pod)

# ZSH-SYNTAX-HIGHLIGHTING
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS+=('rm -[rf]*' 'fg=white,bold,bg=red')

source $ZSH/oh-my-zsh.sh

export PATH=/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH

# Shortcuts
alias psgrep="ps aux | grep -v grep | grep"
alias ls="ls -alh"
alias v="vim"
alias n="node"
mkcd() { mkdir -p "$@" && cd "$_"; }

# Get OS X Software Updates, update Homebrew itself, and upgrade installed Homebrew packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias iip="ipconfig getifaddr en1"

# Tmuxinator
export DISABLE_AUTO_TITLE=true
source ~/.bin/tmuxinator.zsh
alias m="mux start"

# Git
alias glog="git l"
alias gla="git la"
alias gfla="git fetch --all && git la"

setopt NO_NOMATCH

if { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
  export PS1="%{$fg[cyan]%}%c$(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[red]%}❯)%{$reset_color%}"
fi

# Language
export LANG="zh_CN.UTF-8"
export LC_COLLATE="zh_CN.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
export LC_MESSAGES="zh_CN.UTF-8"
export LC_MONETARY="zh_CN.UTF-8"
export LC_NUMERIC="zh_CN.UTF-8"
export LC_TIME="zh_CN.UTF-8"
export LC_ALL=

export EDITOR='vim'
