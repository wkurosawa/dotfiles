# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# @wkurosawa - Some themes may lower oh-my-zsh performance if browsing a large git repo
# @wkurosawa - Choosed cypher because this don't do a git prompt
ZSH_THEME="cypher"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias remigrate="rake db:drop && rake db:create && rake db:migrate"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(git svn symfony2 cap)
plugins=(git svn symfony2 cap)

source $ZSH/oh-my-zsh.sh

# Customize to your need/bindings...
bindkey -e
bindkey '\e[7~' beginning-of-line
bindkey '\e[4~' end-of-line

# Environment variables
export EDITOR="vim"
export SYMFONY_ASSETS_INSTALL="symlink"

# PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Aliases
alias phing='nocorrect phing'
alias cap='nocorrect cap'
alias remigrate='rake db:drop && rake db:create && rake db:migrate'

# Change directory on login
if [[ -o login ]]; then
    cd /vagrant
fi

# Where the fuck
wtf()
{
    if [ -z "$1" ]; then
        echo -e 'Usage: wtf [regex] ([path])'
    else
        if [ -z "$2" ]; then
            baseDir="."
        else
            baseDir="$2"
        fi
        grep -HiIRn "$1" "$baseDir" 2>/dev/null | grep -v "build/artifacts" | grep -v ".svn" | grep -v ".tags"
    fi;
}

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
