# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"
ZSH_FAVLIST="~/.zsh_favlist"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(archlinux battery git history mercurial pip python ssh-agent vi-mode)
plugins=(archlinux battery git history mercurial pip python vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

unsetopt correct_all
unsetopt nomatch
unsetopt share_history

# completion
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)__pycache__'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#__pycache__'

eval $(dircolors -b ~/.dir_colors)
. ~/.zshrc.functions
. ~/.alias
#
# source base environment
. ~/.env.base
